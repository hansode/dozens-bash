# -*-Shell-script-*-
#

. ${BASH_SOURCE[0]%/*}/base.sh

task_list() {
  call_api -X GET $(base_uri)/zone.json
}
