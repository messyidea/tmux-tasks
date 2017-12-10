tmux_tasks.sh
==

同时创建多个任务并挂载到tmux

how to use it？
---
```shell
# create tmux_task dir
mkdir /etc/tmux_task

# create tasks dir
mkdir /etc/tmux_task/tasks

# copy this script to /etc/tmux_task
cp [this script] /etc/tmux_task/

# run a new task
bash add_task.sh [taskname] [command]
```

之后只需要把你的脚本全部扔在 `/etc/tmux_task/tasks` 这个文件夹就可以了

把脚本设置成开机启动可以方便启动和管理各种任务


注意：
---
+ tmux 任务名变化的话需要在 tmux 配置文件中加入 `set-option -g allow-rename off`
+ 脚本一定要有可执行权限
+ 脚本名字中不能有空格！！！
