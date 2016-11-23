alias vmshow="VBoxManage list vms --long"

## Start vm
function vmstart {
  local machine=${1}
  $(VBoxManage startvm ${machine} --type headless)
}
