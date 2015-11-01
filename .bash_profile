# MISC
# ====
# http://hackercodex.com/guide/mac-osx-mavericks-10.9-configuration/
# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Allow a big old ~/.bash_history
export HISTSIZE=1000000
export HISTFILESIZE=1000000

# tesseract
export SCROLLVIEW_PATH=/Library/Caches/Homebrew/tesseract--git/java

force_colored_prompt=yes


# ==========
# Aliases
# ==========
read -r -d '' alias_docstring_ << EOM
Locations
---------
g     - go to github home
blog  - go to blog home
uoe   - go to University of Edinburgh Dropbox home
ucl   - go to University College London Dropbox home  
utils - go to utils Dropbox home
Executables
-----------
matprompt - Start Matlab command line prompt
lsr       - Show ten most recent files in current folder
p         - Activate python conda environment
d         - Deactivate conda environment you are in
EOM

alias aliases='echo "$alias_docstring_" && echo -e "\n\$ compgen -a" && compgen -a'
 
# Locations
# ---------
alias proj='cd ~/Dropbox/UCL/Project'
alias g='cd ~/git'
alias blog='cd /Users/kungfujam/Google\ Drive/Blog/Code/'
alias uoe='cd ~/Dropbox/UoE'
alias ucl='cd ~/Dropbox/UCL'
alias utils='cd ~/Dropbox/utils'

# Executables
# -----------
# This is a hack to make gcc the non-clang version of the compiler
# I needed this for ocropy
# alias gcc='gcc-4.9'
alias matprompt='matlab -nojvm -nodisplay -nosplash'
alias Aletheia='wine "/Users/kungfujam/Dropbox/UCL/Project/tools/Aletheia 2.2/Aletheia.exe" &'
alias PAGE='sh "/Users/kungfujam/Dropbox/UCL/Project/tools/PAGEViewerMacOS_1.1/JPageViewer 1.1 (Mac OS, 64 bit)/Start Page Viewer.sh" &'
# Most recent files
alias lsr='ls -Artls | tail -n 10'
alias p='source activate py27'
alias d='source deactivate'
# Colourise ls
alias ls='ls --color=auto'
# Long list ls
alias ll='ls -la --color=auto'
# List hidden
alias l.='ls -d .* --color=auto'


# ============
# PATH CHANGES
# ============
# Reset path to original if this file has been sourced before
# otherwise reset the path as the orignal path
if [ -z ${ORIGPATH+x} ]
then 
    export ORIGPATH=$PATH
else
    export PATH=$ORIGPATH
fi
# export PATH="$PATH:/Applications/Mathematica.app/Contents/MacOS"

# Enable firefox from command line
export PATH="$ORIGPATH:/Applications/Firefox.app/Contents/MacOS"

# Enable Julia
export PATH="$PATH:/Applications/Julia-0.3.1.app/Contents/Resources/julia/bin"

# export PATH="$PATH:/Applications/Audacity.app/Contents/MacOS/"
# export PATH="$PATH:/Applications/Wine.app/Contents/Resources/bin"

# Personal utils
export PATH="$PATH:/Users/kungfujam/Dropbox/utils"

# # FSL Setup
# FSLDIR=/usr/local/fsl
# PATH=${FSLDIR}/bin:${PATH}
# export FSLDIR PATH 
# . ${FSLDIR}/etc/fslconf/fsl.sh 
# 
# tractor 
# export TRACTOR_HOME=/Users/kungfujam/Downloads/tractor
# export PATH=${TRACTOR_HOME}/bin:${PATH}
# export MANPATH=${TRACTOR_HOME}/man:${MANPATH}

#
# Your previous /Users/kungfujam/.bash_profile file was backed up as /Users/kungfujam/.bash_profile.macports-saved_2015-08-27_at_18:18:36
##
## MacPorts Installer addition on 2015-08-27_at_18:18:36: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
## Finished adapting your PATH environment variable for use with MacPorts.

# Matlab -- need to change with version
export PATH="$PATH:/Applications/MATLAB_R2015b.app/bin"

# For homebrew
export PATH="/usr/local/sbin:$PATH"

# TeX
export PATH="$PATH:/usr/local/texlive/2014/bin/x86_64-darwin"

# # Hugin was for a vision project
# export PATH="$PATH:/Application/HuginTools"

# VLC
export PATH="$PATH:/Users/kungfujam/Applications/VLC.app/Contents/MacOS"
export VLC_PLUGIN_PATH=~/Applications/VLC.app/Contents/MacOS/plugins/

# added by Anaconda 2.1.0 installer
export PATH="/Users/kungfujam/anaconda/bin:$PATH"

# added by Anaconda 2.3.0 installer
export PATH="/Users/kungfujam/anaconda/bin:$PATH"
