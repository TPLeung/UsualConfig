
# ===========================
# basic setup
# ===========================
# set prompt and cd function #
set cr = "%{\e[31m%}"
set cg = "%{\e[32m%}"
set cy = "%{\e[33m%}"
set cb = "%{\e[34m%}"
set c0 = "%{\e[0m%}"
set prompt =                "$cy%B[%n@%M$c0%b %B$cg%c2$c0%b %B$cy]%#$c0%b "
alias setprompt 'set prompt="$cy%B[%n@%M$c0%b %B$cg%c2$c0%b %B$cy]%#$c0%b "'
alias cd 'chdir \!* && setprompt && ls -v'

# tmux need it #
setenv TERM xterm-256color

# ===========================
# Colorize
# ===========================
setenv LSCOLORS ExGxFxdxCxegedabagExEx
setenv CLICOLOR yes
setenv GREP_OPTIONS --color=auto

# ===========================
# alias
# ===========================
# common alias #
alias .. 'cd ..'
alias ... 'cd ../../'
alias -  'cd -'
alias q  'exit'
alias rm 'rm -i'
alias mv 'mv -i'
alias cp 'cp -i'
alias ls 'ls -v --color'
alias la 'ls -a'
alias ll 'ls -hl'
alias lr 'ls -R'
alias d1 'du -h -d 1'
alias dh 'df -h -a -T'
alias ds 'du -sh'

# vim alias #
alias g  'gvim -geometry 319x76+0+0'
alias gd 'gvimdiff -geometry 319x76+0+0'
alias v  'vim'
alias vv 'vim ~/.vimrc'
alias vc 'vim ~/.cshrc'
alias sc 'source ~/.cshrc'
alias vt 'vim ~/.tmux.conf'

# tmux alias #
alias tmux 'tmux -u'
alias ta   'tmux attach -t '
alias tl   'tmux ls'

# git related alias #
alias ga  'git add'
alias gb  'git branch -a'
alias gc  'git checkout'
alias gm  'git commit -m'
alias gma 'git commit --amend'
alias gr  'git reset'
alias grh 'git reset --hard HEAD^'
alias grs 'git reset --soft HEAD^'
alias gs  'git status'
alias gss 'git stash'
alias gsp 'git stash pop'
alias gpl 'git pull --rebase origin master'
alias gps 'git push origin HEAD:refs/for/master'
alias gpx2p 'git push origin HEAD:refs/for/x2_plus_master'
alias gss 'git stash'
alias gsp 'git stash pop'
alias gsu 'git submodule update --recursive'

# tree related alias #
alias lt  'tree -N -C'
alias l2  'tree -N -C -L 2'
alias l3  'tree -N -C -L 3'
alias l4  'tree -N -C -L 4'
alias l5  'tree -N -C -L 5'

# zhouyi project related alias #
alias bsb 'bsub -R "select[rhe7] rusage[mem=4096]" -Is -q low -P pjzhouyi '
alias wave 'bsb start.py --cmd indago --ida_opt '
alias gobak 'cd /home/tomlia01/Documents/'
alias goreg 'cd /project/ai/scratch04/regai01/'
alias gosca 'cd /project/ai/scratch04/tomlia01/'
alias goqia 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_qian/'
alias gokun 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/'
alias golin 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/'

# lin project related alias [default] #
alias gowvi 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_waiver/'
alias gomem 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/memory/script/'
alias gogm  'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_gm/verilog/'
alias gortl 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/verilog/'
alias gomtp 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/verilog/mtp/'
alias godma 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff_dma/verilog/'
alias gosim 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff_dma/tb/script/'
alias gsima 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/tb/script/'
alias gsimm 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff_mtp/tb/script/'
alias grdma 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/verilog/rdma/'
alias gwdma 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/verilog/wdma/'
alias gudma 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/verilog/udma/'
alias genreg 'python3 /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/PDAI_lib/ACVM/acrt/regtool.py -f AIFF_Reg_mtp.xlsm --cmd gen_rtl'
alias gendoc 'python3 /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/PDAI_lib/ACVM/acrt/regtool.py -f AIFF_Reg_mtp.xlsm --cmd gen_doc'

# lin project related alias #
alias golwvi 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_waiver/'
alias golmem 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/memory/script/'
alias golgm  'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_gm/verilog/'
alias golrtl 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/verilog/'
alias golmtp 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/verilog/mtp/'
alias goldma 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff_dma/verilog/'
alias golsim 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff_dma/tb/script/'
alias glsima 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/tb/script/'
alias glrdma 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/verilog/rdma/'
alias glwdma 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/verilog/wdma/'
alias gludma 'cd /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/zhouyi/lin/logical/zy_lin_aiff/verilog/udma/'
alias genlreg 'python3 /project/ai/zhouyi_lin/tomlia01/zhouyi_lin/PDAI_lib/ACVM/acrt/regtool.py -f AIFF_Reg_mtp.xlsm --cmd gen_rtl'

# kun project related alias #
alias gokwvi 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_waiver/'
alias gokmem 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/zhouyi/kun/logical/memory/script/'
alias gokgm  'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/zhouyi/kun/logical/zy_kun_gm/verilog/'
alias gokrtl 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/zhouyi/kun/logical/zy_kun_aiff/verilog/'
alias gokmtp 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/zhouyi/kun/logical/zy_kun_aiff/verilog/mtp/'
alias gokdma 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/zhouyi/kun/logical/zy_kun_aiff_dma/verilog/'
alias goksim 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/zhouyi/kun/logical/zy_kun_aiff_dma/tb/script/'
alias gksima 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/zhouyi/kun/logical/zy_kun_aiff/tb/script/'
alias gkrdma 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/zhouyi/kun/logical/zy_kun_aiff/verilog/rdma/'
alias gkwdma 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/zhouyi/kun/logical/zy_kun_aiff/verilog/wdma/'
alias gkudma 'cd /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/zhouyi/kun/logical/zy_kun_aiff/verilog/udma/'
alias genkreg 'python3 /project/ai/zhouyi_kun/tomlia01/zhouyi_kun/PDAI_lib/ACVM/acrt/regtool.py -f AIFF_Reg_mtp.xlsm --cmd gen_rtl'

# z1 project related alias #
# alias bsb 'bsub -I -q inter -P pjzhouyi '
# alias goprj 'cd /project/ai/zhouyi/tomliang/zhouyi_v1/'
# alias gortl 'cd /project/ai/zhouyi/tomliang/zhouyi_v1/zhouyi/aipu/logical/'
# alias gocor 'cd /project/ai/zhouyi/tomliang/zhouyi_v1/zhouyi/aipu/logical/zy_aipu_core/'
# alias goifu 'cd /project/ai/zhouyi/tomliang/zhouyi_v1/zhouyi/aipu/logical/zy_aipu_ifu/'
# alias gospu 'cd /project/ai/zhouyi/tomliang/zhouyi_v1/zhouyi/aipu/logical/zy_aipu_spu/'
# alias goscp 'cd /project/ai/zhouyi/tomliang/zhouyi_v1/zhouyi/system/script/'
# alias gosyn 'cd /project/ai/zhouyi/tomliang/syn_test/'

# init shell setup #
source /arm/tools/setup/init/tcsh
setenv PATH ${PATH}:/arm/tools/public/
#
# # init platform #
# module load core platform/lsf/10.1sp4
# module load core arm/cluster/2.0
#
# # init eda tools #
# module load eda cadence/genus/17.22-s017
# module load eda cadence/innovus/17.14.000
# module load eda cadence/xcelium/2018.03.006
# # module load eda synopsys/vcs/2017.03-SP2-5
# module load eda synopsys/verdi3/2017.12-SP1
# module load eda synopsys/synthesis/2017.09-SP3
#
# init vscode
module load swdev microsoft/vscode/1.67.1

# init git
module load swdev git/git/2.17.1

# complete
set gm_sur="ZYLIN-34:[MTP]"
complete gm 'p/1/$gm_sur/'