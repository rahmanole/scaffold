install:
	pip install --upgrade pip && pip install -r requirements.txt

lint:
	pylint --disable=R,C *.py

test:
	python -m pytest -vv --cov=main test_main.py

format:
	black *.py

all: install lint test