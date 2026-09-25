import os
import logging
from flask import Flask, render_template, redirect, url_for, request, g
from pokedex import helper

# Initialize structured logging framework configuration bounds
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(name)s: %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S"
)
logger = logging.getLogger("pokedex.app")

app = Flask(__name__)
# Read path from environment variable with fallback to maintain runtime flexibility
app.config["DATABASE"] = os.environ.get("DATABASE_PATH", "../database.db")


@app.route("/")
def index():
    pokemon = [
        {"id": id, "pokemon_name": pokemon_name, "image_url": image_url}
        for (id, pokemon_name, image_url, _) in helper.fetch_all_pokemons(get_db())
    ]
    return render_template("index.html", pokemon=pokemon)


@app.route("/subscribe", methods=["POST"])
def subscribe():
    email = request.form["email"]
    # Injected basic data field presence checks at boundary
    if not email or not email.strip():
        logger.warning("Empty email subscription registration attempt blocked.")
        return redirect(url_for("index"))
        
    helper.register_subscriber(get_db(), email)
    logger.info(f"Successfully registered subscriber matching identity string criteria.")
    return redirect(url_for("index"))


@app.route("/<pokemon_id>")
def get_pokemon(pokemon_id: str):
    try:
        _, pokemon_name, image_url, description = helper.fetch_pokemon(get_db(), pokemon_id)
        return render_template(
            "pokemon.html",
            description=description,
            sprites=[image_url],
            name=pokemon_name,
            pokemon_id=pokemon_id,
        )
    except (ValueError, TypeError, KeyError) as error:
        # Replaced bare except rules with explicit validation typing check blocks
        logger.warning(f"Failed query lookup invocation targeting id '{pokemon_id}': {str(error)}")
        return redirect(url_for("index"))
    except Exception as unexpected_error:
        # Catch unexpected fatal conditions cleanly without swallowing the stack details
        logger.exception(f"Unexpected operational layout mapping error tracking path: {str(unexpected_error)}")
        return redirect(url_for("index"))


def get_db():
    if "db" not in g:
        # Safely points to the configuration array parameter updated by the test suite
        g.db = helper.ConnectionWrapper(app.config["DATABASE"])
    return g.db


@app.teardown_appcontext
def close_db(error):
    if "db" in g:
        g.db.cleanup(True)


if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(threaded=True, port=port, debug=True)
