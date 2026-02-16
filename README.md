# Basic Server

This code is meant as a starting point for running various server-based applications using docker containers with a single docker compose configuration.

## Immich

https://docs.immich.app/overview/quick-start/

## Kavita

https://wiki.kavitareader.com/getting-started/

## Run Docker Composition

### Launch Backend
run the following command:
```bash
docker compose up
```

### Shut Down the Backend
run the following command:
```bash
docker compose down
```

## Contributing

### Python Virtual Environment

This repo uses [uv](https://docs.astral.sh/uv/) for configuring the Python virtual environment.
As prerequisites, you will need both Python and uv installed and accessible in you path.
If needed, refer to the linked documentation for installing [python](https://www.python.org/downloads/) and [uv](https://docs.astral.sh/uv/getting-started/installation/).
Both Python and uv should be able to be installed on a system as a local install without admin priveleges.

After cloning the repo, navigate into the base folder and setup your python enviornemnet as follows:

```bash
cd server_applications
uv sync
```

Once the virtual environment is configured, activate the environment from the base folder by running the following:

```bash
# If using Windows
source .venv/Scripts/activate

#If using Linux/MacOS
source .venv/bin/activate
```

Then configure the [isort](https://pycqa.github.io/isort/), [black](https://black.readthedocs.io/en/stable/index.html), and [flake8](https://flake8.pycqa.org/en/latest/) pre-commit hooks by running the following. You can view and make changes to the enforced rules using the `tox.ini` file.

```bash
pre-commit install
```
