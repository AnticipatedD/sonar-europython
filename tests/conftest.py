# Copyright Advanced Micro Devices, Inc.
#
# SPDX-License-Identifier: MIT

import os
import sqlite3
import pytest
from pokedex.app import app as flask_app

@pytest.fixture
def app(monkeypatch, tmp_path):
    """Creates a completely isolated, ephemeral database context for test runs."""
    # Create a temporary database file path unique to this test run execution slice
    db_path = tmp_path / "test_pokedex.db"
    
    # Force the app configuration to read from our temporary test database path
    monkeypatch.setenv("DATABASE", str(db_path))
    flask_app.config["DATABASE"] = str(db_path)
    flask_app.config["TESTING"] = True

    # Initialize the database schema cleanly out-of-the-box using the schema file
    schema_path = os.path.join(os.path.dirname(__file__), "..", "schema.sql")
    if os.path.exists(schema_path):
        with open(schema_path, "r") as f:
            schema_sql = f.read()
        conn = sqlite3.connect(str(db_path))
        conn.executescript(schema_sql)
        conn.commit()
        conn.close()

    yield flask_app

@pytest.fixture
def client(app):
    """Provides a functional Flask test client instance bounding application context."""
    return app.test_client()

@pytest.fixture
def runner(app):
    """Provides a functional Flask CLI runner instance for isolated script triggering."""
    return app.test_cli_runner()
