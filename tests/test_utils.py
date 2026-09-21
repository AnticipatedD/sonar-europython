from pokedex.utils import is_pikachu

def test_is_pikachu():
    assert is_pikachu("Pikachu") is True
    assert is_pikachu("Charmander") is False
