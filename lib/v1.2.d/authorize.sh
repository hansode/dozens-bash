# -*-Shell-script-*-
#

. ${BASH_SOURCE[0]%/*}/base.sh

task_login() {
  call_api -X GET $(base_uri)/authorize.json
}
