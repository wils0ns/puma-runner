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

## Usage

```bash
PUMA_VERSION=<PUMA-VERSION> ./run.sh <INPUT_FILEPATH>
```

Example:

```bash
PUMA_VERSION=1.2.2 ./run.sh ~/Downloads/HPV-18_UFS_BR-01.fas
```

NOTE: [Input file format](https://github.com/KVD-lab/puma#formatting-input-fasta-file-1)

## Resources

* [kvdlab/puma container image](https://hub.docker.com/r/kvdlab/puma)
* [KVD-lab/puma repository](https://github.com/KVD-lab/puma)
