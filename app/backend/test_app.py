import sys
import os

# ensures CI can always find app.py
sys.path.append(os.path.dirname(__file__))

from app import app


def test_home():
    client = app.test_client()
    response = client.get("/")
    assert response.status_code == 200
    assert b"Backend is working" in response.data


def test_health():
    client = app.test_client()
    response = client.get("/health")
    assert response.status_code == 200
    assert response.data == b"OK"
