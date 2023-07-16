#!/usr/bin/env bash
set -eu -o pipefail

# shellcheck disable=SC2034
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck disable=SC2034
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"

PROJECT_NAME="$1"

[[ ! "$PROJECT_NAME" ]] && echo "Missing project name" && exit 1

EXPR="s/MYPROEJCT/$(PROJECT_NAME)/g"
sed -i -e "$EXPR" ./Makefile
