umask 002
cdpath=(~)

if [ `uname` = 'Darwin' ]; then
  test -r /sw/bin/init.sh && . /sw/bin/init.sh
fi

setopt AUTOPUSHD
setopt PUSHD_IGNORE_DUPS
setopt AUTO_CD
setopt CDABLEVARS

#typeset -ga chpwd_functions
#typeset -ga preexec_functions

for file in env bindkey prompt complete history screen alias; do
  [ -f ~/.zsh/.zshrc.$file ]; source ~/.zsh/.zshrc.$file
done

function chpwd () {
    _reg_pwd_screennum
    _prompt_compute_vars
    _color_ls
}

function preexec () {
    _git_preexec_update_vars
}

