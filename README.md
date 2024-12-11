# First App

This App is just meant to be deployed on a docker container to check ports, firewall rules, proxy settings, and https
termination with certificates.

## Development

Run `make virtualenv` to get started. We'll use `.venv` as our virtual environment folder.

Finally, run `make install` to install all requirements from `requirements.txt`.

## Running locally

Execute `make run`.

## Docker

### Running in a docker container

Copy `example.env` to `.env`, and configure it. Then run `docker compose up`. Do not forget to run
`docker compose build` if something changes in `src` or requirements.
