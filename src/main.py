import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return f"""
        Python web app online!
        Env vars are: <br />
        DOT_ENV_VAR={os.getenv('DOT_ENV_VAR')}<br />
        ENV_FROM_DOCKER_COMPOSE={os.getenv('ENV_FROM_DOCKER_COMPOSE')}
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080, debug=True)
