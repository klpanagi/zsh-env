alias vmshow="VBoxManage list vms --long"

function vmstart {
  local machine=${1}
  $(VBoxManage startvm ${machine} --type headless)
}
