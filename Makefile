install:
	pip install --trusted-host pypi.python.org -r requirements.txt

lint:
	hadolint Dockerfile
	pylint --disable=R,C app.py

test:
	pytest -v

validate-circleci-config:
	circleci config process .circleci/config.yml

run-circleci-local:
	circleci local execute

run-app:
	python app.py

all: intall lint test
