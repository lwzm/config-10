# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias df='df -h'
alias du='du -h'
alias ll='ls -lh'
alias la='ls -lha'
alias l='ll'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ..='cd ..'

function xsh() {
  #if which "$1" >/dev/null 2>&1; then
  if [ -n "$1" ]; then
    #seq -f 'b%.0f' 9 | xargs -n 1 -P 0 -I HOST ssh HOST "$@"
    echo '
	b1
	b3
	b4
	b5
	b6
	b7
	b9
	' | xargs -n 1 -P 0 -I HOST ssh HOST "$@"
  fi
}

function xsh6() {
  #if which "$1" >/dev/null 2>&1; then
  if [ -n "$1" ]; then
    #seq -f 'b%.0f' 6 | xargs -n 1 -P 0 -I HOST ssh HOST "$@"
    echo '
	b1
	b3
	b4
	b5
	b6
	' | xargs -n 1 -P 0 -I HOST ssh HOST "$@"
  fi
}

function xxxsh() {
  #if which "$1" >/dev/null 2>&1; then
  if [ -n "$1" ]; then
    #seq -f 'rr%.0f' 9 | xargs -n 1 -P 0 -I HOST ssh HOST "$@"
    echo '
	bb1
	bb3
	bb4
	bb5
	bb6
	bb7
	bb9
	' | xargs -n 1 -P 0 -I HOST ssh HOST "$@"
  fi
}

function xcp() {
  if [ -e "$1" ]; then
    #seq -f 'b%.0f' 9 | xargs -n 1 -P 0 -I HOST scp -r "$1" HOST:"$2"
    echo '
	b1
	b3
	b4
	b5
	b6
	b7
	b9
	' | xargs -n 1 -P 0 -I HOST scp -r "$1" HOST:"$2"
  fi
}
