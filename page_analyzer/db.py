import psycopg2
import os
from psycopg2.extras import RealDictCursor
import datetime
import contextlib
from dotenv import load_dotenv

load_dotenv()

DATABASE_URL = os.getenv('DATABASE_URL')


def connect():
    connect = psycopg2.connect(DATABASE_URL)
    return connect
