#!/bin/bash

session_name='tasks'
path="/etc/tmux_task/tasks"
file_list=`ls $path`
path_now=`pwd`

task_name=$1

for((i=2;i<=$#;i++));
do 
    j=${!i}
    cmd="${cmd} $j "
done

script_file_name="${task_name}.sh"
script_file_path="${path}/${script_file_name}"

touch $script_file_path
chmod a+x $script_file_path
echo "#!/bin/bash" >> $script_file_path
echo "cd ${path_now}" >> $script_file_path
echo "$cmd" >> $script_file_path
