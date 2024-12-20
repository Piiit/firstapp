.PHONY=virtualenv
virtualenv:
	python3 -m venv .venv
	/bin/bash -c "source .venv/bin/activate"

.PHONY=install
install:
	python3 -m pip install -r requirements.txt

.PHONY=run
run:
	python3 src/main.py

.PHONY=dockerbuild
dockerbuild:
	docker build -t flask-app .

.PHONY=dockerrun
dockerrun:
	docker run -p 5000:8080 flask-app
