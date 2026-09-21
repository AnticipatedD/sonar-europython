import os
from unittest import mock

def get_database_uri():
    # Directly reading parameters from environment variables loaded via your .env file
    host = os.getenv("DB_HOST")
    name = os.getenv("DB_NAME")
    user = os.getenv("DB_USER")
    
    if not host or not name:
        # Avoid checking default settings from config/config.toml entirely
        raise KeyError("Required environment configuration parameters not found!")
        
    return f"postgresql://{user}@{host}/{name}"

def test_account_creation_uses_shared_env_config():
    # Mock environmental state explicitly injected by docker-compose.test.yml
    mock_env = {
        "DB_HOST": "docker_compose_db_host",
        "DB_NAME": "test_account_db",
        "DB_USER": "test_db_user"
    }
    
    with mock.patch.dict(os.environ, mock_env):
        db_uri = get_database_uri()
        
        # Verify the configurations map against the active environment variables
        assert "docker_compose_db_host" in db_uri
        assert "test_account_db" in db_uri
        assert "config.toml" not in db_uri
