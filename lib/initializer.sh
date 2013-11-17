# -*-Shell-script-*-
#

# include files

. ${BASH_SOURCE[0]%/*}/curlet.sh

# variables

## System part

LANG=C
LC_ALL=C

## curlet part

function rc_path() {
  echo ${ZABBIX_RC:-${HOME}/.dozensrc}
}

function request_header() {
  echo -H \"Content-Type: application/json\"
  echo -H \"X-Auth-User: ${user}\"

  if [[ -n "${auth_key}" ]]; then
    echo -H \"X-Auth-Key: ${auth_key}\"
  fi
  if [[ -n "${auth_token}" ]]; then
    echo -H \"X-Auth-Token: ${auth_token}\"
  fi
}

## Dozens part

load_rc

extract_args "$@"

API_VERSION=${API_VERSION:-1.2}
API_HOST=${API_HOST:-dozens.jp}
API_PORT=${API_PORT:-80}
API_BASE_URI=${API_BASE_URI:-http://${API_HOST}:${API_PORT}}/api
