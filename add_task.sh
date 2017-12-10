#!/bin/bash

session_name='tasks'
path="/etc/tmux_task/tasks"
file_list=`ls $path`

task_name=$1

for((i=2;i<=$#;i++));
do 
    j=${!i}
    cmd="${cmd} $j "
done

tmux neww -a -n $task_name -t $session_name
echo "start a new task $task_name"
echo "the command is $cmd"

tmux send -t "$session_name:$task_name" "$cmd" Enter