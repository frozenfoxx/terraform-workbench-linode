#!/usr/bin/env bash

# Variables
DATA_DIR=${DATA_DIR:-'/data'}

# Functions

## Create directories for the containers
create_data_dirs()
{
  mkdir -p ${DATA_DIR}}
}

## Display usage information
usage()
{
  echo "[Environment Variables] deploy.sh [options]"
  echo "  Environment Variables:"
  echo "    DATA_DIR                    directory containing data files for containers"
  echo "  Options:"
  echo "    -h | --help                 display this usage information"
}

# Logic

## Argument parsing
case $1 in
  -h | --help ) usage
                exit 0
esac

create_data_dirs
