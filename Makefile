setup:
	python3 -m venv ~/.udacity-devops

install:
	source ~/.udacity-devops/bin/activate
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	source ~/.udacity-devops/bin/activate
	pylint --disable=R,C,W1203,W0702 app.py

all: install lint
