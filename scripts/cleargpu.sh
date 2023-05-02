# 使用以下命令发现僵尸进程,然后使用 kill -9 pid 杀死僵尸进程
# fuser -v /dev/nvidia*

# 当僵尸进程比较多时，上述命令重复输入显得非常繁琐，使用下属命令一句话杀死所有进程
fuser -v /dev/nvidia* |awk '{for(i=1;i<=NF;i++)print "kill -9 " $i;}' |  sh