# Puma Runner

Puma Runner stream-lines execution of Puma (Papillomavirus genome annotation tool).

## Pre-requisites

* [Git](https://git-scm.com/downloads)
* [Docker](https://docs.docker.com/get-docker/)
* Bash-compatible environment (Linux, MacOS, Windows WSL, etc)

## Setup

```bash
git clone https://github.com/wils0ns/puma-runner.git
cd puma-runner
chmod +x run.sh
```

## Usage

```bash
./run.sh <INPUT_FILEPATH>
```

Example:

```bash
./run.sh ~/Downloads/sample.fas
```

To use a specific Puma version, set the `PUMA_VERSION` environment variable, for example:

```bash
PUMA_VERSION=1.2.2 ./run.sh ~/Downloads/sample.fas
```

NOTE: [Input file format](https://github.com/KVD-lab/puma#formatting-input-fasta-file-1)

## Resources

* [kvdlab/puma container image](https://hub.docker.com/r/kvdlab/puma)
* [KVD-lab/puma repository](https://github.com/KVD-lab/puma)
