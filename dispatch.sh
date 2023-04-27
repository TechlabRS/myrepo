script=$(realpath "$0")
script_path=$(dirname "$script")
source ${script_path}/common.sh

component=dispatch

func_golang
func_print_head "your application ${component} successfully completed"
