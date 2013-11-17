# -*-Shell-script-*-
#

. ${BASH_SOURCE[0]%/*}/base.sh

task_list() {
  local name=$1
  call_api -X GET $(base_uri)/record/${name}.json
}
