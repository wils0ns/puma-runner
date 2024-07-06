# Puma Runner

Puma Runner stream-lines execution of Puma (Papillomavirus genome annotation tool).

## Pre-requisites

* [Git](https://git-scm.com/downloads)
* [Docker](https://docs.docker.com/get-docker/)
* Bash-compatible environment (Linux, MacOS, Windows WSL, etc)

## Setup

```bash
git clone git@github.com:wils0ns/puma-runner.git
cd puma-runner
chmod +x run.sh
```

## Usage Example

```bash
PUMA_VERSION=1.2.2 ./run.sh ~/Downloads/HPV-18_UFS_BR-01.fas
```

Sample file format:

```text
>SHORT_NAME|FULL_NAME
DATA_SEQUENCE
```
