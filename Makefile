lint:
	pylint --disable=R,C app.py

install-requirements:
	pip install --trusted-host pypi.python.org -r requirements.txt

run-app:
	docker run -p 8000:5000 api
