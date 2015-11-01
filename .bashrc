# MISC
force_colored_prompt=yes

# EXECUTABLES
# ========
# Colourise ls
alias ls='ls --color=auto'

# Long list ls
alias ll='ls -la --color=auto'

# List hidden
alias l.='ls -d .* --color=auto'

# PATH
# ========
export PATH="$PATH:/afs/inf.ed.ac.uk/user/s08/s0816700/software"

# MLP
# ======== 
export MLP_WDIR=~/mlpractical
alias actmlp="source $MLP_WDIR/venv/bin/activate"
# Set openblas threads
export OMP_NUM_THREADS=1
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$MLP_WDIR/repos-3rd/OpenBLAS/lib

# EXC
# ========
export EXAMPLES="/opt/hadoop/hadoop-2.7.1/share/hadoop/mapreduce/"\
"hadoop-mapreduce-examples-2.7.1.jar"
export hadstream="/opt/hadoop/hadoop-2.7.1/share/hadoop/tools/lib/"\
"hadoop-streaming-2.7.1.jar"
export exc1data=/data/assignments/ex1

alias rmout="hdfs dfs -rm -R /user/$USER/data/output"
hdfscopytolocal() {
    hdfs dfs -copyToLocal /user/$USER/data/output/part-00000 $1
}
alias cpout="hdfscopytolocal"
getName() {
    finger $1 | awk 'NR==1 { print $4 " " $5 }'
}
export -f getName
## This works if you paste it into bash but not if you source this file
#bloaters() {
#    mapred job -list | \
#    awk 'NR>2 {
#        cmd="getName "$4 
#        while ( ( cmd | getline result ) > 0 ) {
#            print result, $4, $9, $11
#        }
#        close(cmd)
#    }'; }
#[maverick]s0816700: source ~/.bashrc
#awk: cmd. line:1: NR>2 { cmd=getName
#awk: cmd. line:1:                   ^ unexpected newline or end of string

#export -f bloaters 
#alias husers='for u in $(mapred job -list | awk '"'"'{ if (NR!=1) print $4 }'"'"' | awk '"'"'!x[$0]++'"'"' );do finger $u;done'
#alias bloaters='mapred job -list | awk '"'"'{ print $4, "\t", $9, "  \t", $11 }'"'" 
alias hls='hdfs dfs -ls -h -R /user/$USER/'

export PATH="$PATH:/afs/inf.ed.ac.uk/user/s08/s0816700/exc/assignments/assignment1/code/utils/"

