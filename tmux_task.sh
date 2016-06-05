#!/bin/bash

session_name='tasks'
path="/etc/tmux_task/tasks"
file_list=`ls $path`

tmux new -s $session_name -d
tmux rename-window -t $session_name $session_name

for file in $file_list
do
    task_name=${file%.*}
    file_name=$file
    tmux neww -a -n $task_name -t $session_name
    echo "start a new task $task_name"
    tmux send -t "$session_name:$task_name" "$path/$file_name" Enter
done
