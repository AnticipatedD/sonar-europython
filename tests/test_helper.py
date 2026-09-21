import pytest
import sqlite3
from pokedex.helper import ConnectionWrapper

@pytest.fixture
def test_db(tmp_path):
    db_file = tmp_path / "test_pokedex.db"
    conn = sqlite3.connect(db_file)
    conn.execute('CREATE TABLE POKEDEX (id INT, name TEXT)')
    conn.execute('CREATE TABLE SUBSCRIBERS (email TEXT)')
    conn.execute('INSERT INTO POKEDEX VALUES (1, "Pikachu")')
    conn.commit()
    conn.close()
    return str(db_file)

def test_get_single_pokemon_uses_parameterized_query(test_db):
    wrapper = ConnectionWrapper(test_db)
    res = wrapper.get_single_pokemon(1)
    assert res == (1, "Pikachu")

def test_fetch_pokemon_raises_value_error(test_db):
    wrapper = ConnectionWrapper(test_db)
    with pytest.raises(ValueError, match="Pokemon not found"):
        wrapper.fetch_pokemon("Unknown")

def test_register_subscriber_valid_email(test_db):
    wrapper = ConnectionWrapper(test_db)
    assert wrapper.register_subscriber("test@example.com") is True

def test_register_subscriber_rejects_invalid_email(test_db):
    wrapper = ConnectionWrapper(test_db)
    with pytest.raises(ValueError, match="Invalid email!"):
        wrapper.register_subscriber("invalid-email")
