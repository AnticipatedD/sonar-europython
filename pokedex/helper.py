import re
import sqlite3

class ConnectionWrapper:
    def __init__(self, db_path="pokedex.db"):
        self.__conn = sqlite3.connect(db_path)

    def get_single_pokemon(self, pokemon_id):
        cursor = self.__conn.cursor()
        cursor.execute('SELECT * FROM POKEDEX WHERE id = ?', (pokemon_id,))
        return cursor.fetchone()

    def fetch_pokemon(self, name):
        cursor = self.__conn.cursor()
        cursor.execute('SELECT * FROM POKEDEX WHERE name = ?', (name,))
        res = cursor.fetchone()
        if not res:
            raise ValueError("Pokemon not found")
        return res

    def register_subscriber(self, email):
        regex = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
        if not re.match(regex, email):
            raise ValueError("Invalid email!")
        cursor = self.__conn.cursor()
        cursor.execute('INSERT INTO SUBSCRIBERS (email) VALUES (?)', (email,))
        self.__conn.commit()
        return True
