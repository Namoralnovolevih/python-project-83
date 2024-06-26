install:
	poetry install

setup:
	make install
	sh ./build.sh

dev:
	poetry run flask --app page_analyzer:app run

lint:
	poetry run flake8 page_analyzer/app.py

test:
	poetry run pytest

PORT ?= 8000
start:
	poetry run gunicorn -w 5 -b 0.0.0.0:$(PORT) page_analyzer:app

