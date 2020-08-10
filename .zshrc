# The following lines were added by compinstall
#source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.aliasrc
source /usr/share/doc/pkgfile/command-not-found.zsh
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/jason/.zshrc'
zstyle ':completion::complete:*' gain-privileges 1
setopt COMPLETE_ALIASES
ZSH_THEME="wedisagree"
autoload -U colors && colors
autoload -Uz compinit promptinit
compinit
promptinit
prompt elite
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
plugins=(colorize command-not-found dirhistory)
setopt autocd beep extendedglob nomatch
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
#bindkey -M menuselect 'h' vi-backward-char
#bindkey -M menuselect 'k' vi-up-line-or-history
#bindkey -M menuselect 'l' vi-forward-char
#bindkey -M menuselect 'j' vi-down-line-or-history
#bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
	       [[ $1 = 'block' ]]; then
      echo -ne '\e[1 q'
        elif [[ ${KEYMAP} == main ]] ||
		       [[ ${KEYMAP} == viins ]] ||
		              [[ ${KEYMAP} = '' ]] ||
			             [[ $1 = 'beam' ]]; then
	    echo -ne '\e[5 q'
	      fi
      }
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
        echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
# End of lines configured by zsh-newuser-install
# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"

# setup key accordingly
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"      beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"       end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"    overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}" backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"    delete-char
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"        up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"      down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"      backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"     forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"    beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"  end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}" reverse-menu-complete

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
		autoload -Uz add-zle-hook-widget
			function zle_application_mode_start { echoti smkx }
				function zle_application_mode_stop { echoti rmkx }
					add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
						add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
	    tmp="$(mktemp)"
	        lf -last-dir-path="$tmp" "$@"
		    if [ -f "$tmp" ]; then
			            dir="$(cat "$tmp")"
				            rm -f "$tmp" >/dev/null
					            [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
						        fi
						}
					bindkey -s '^o' 'lfcd\n'

					bindkey -s '^a' 'bc -l\n'

					bindkey -s '^f' 'cd "$(dirname "$(fzf | xargs -r)")"\n'

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search
export LESS_TERMCAP_mb=$'\e[6m'          # begin blinking
export LESS_TERMCAP_md=$'\e[34m'         # begin bold
export LESS_TERMCAP_us=$'\e[4;32m'       # begin underline
export LESS_TERMCAP_so=$'\e[1;33;41m'    # begin standout-mode - info box
export LESS_TERMCAP_me=$'\e[m'           # end mode
export LESS_TERMCAP_ue=$'\e[m'           # end underline
export LESS_TERMCAP_se=$'\e[m'           # end standout-mode

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#     ____      ____
#    / __/___  / __/
#   / /_/_  / / /_
#  / __/ / /_/ __/
# /_/   /___/_/ key-bindings.zsh
#
# - $FZF_TMUX_OPTS
# - $FZF_CTRL_T_COMMAND
# - $FZF_CTRL_T_OPTS
# - $FZF_CTRL_R_OPTS
# - $FZF_ALT_C_COMMAND
# - $FZF_ALT_C_OPTS

# Key bindings
# ------------

# The code at the top and the bottom of this file is the same as in completion.zsh.
# Refer to that file for explanation.
if 'zmodload' 'zsh/parameter' 2>'/dev/null' && (( ${+options} )); then
	  __fzf_key_bindings_options="options=(${(j: :)${(kv)options[@]}})"
  else
	    () {
	        __fzf_key_bindings_options="setopt"
		    'local' '__fzf_opt'
		        for __fzf_opt in "${(@)${(@f)$(set -o)}%% *}"; do
				      if [[ -o "$__fzf_opt" ]]; then
					              __fzf_key_bindings_options+=" -o $__fzf_opt"
						            else
								            __fzf_key_bindings_options+=" +o $__fzf_opt"
									          fi
										      done
										        }
fi

'emulate' 'zsh' '-o' 'no_aliases'

{

	[[ -o interactive ]] || return 0

	# CTRL-T - Paste the selected file path(s) into the command line
	__fsel() {
		  local cmd="${FZF_CTRL_T_COMMAND:-"command find -L . -mindepth 1 \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
			      -o -type f -print \
			          -o -type d -print \
				      -o -type l -print 2> /dev/null | cut -b3-"}"
		    setopt localoptions pipefail no_aliases 2> /dev/null
		      eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@" | while read item; do
		          echo -n "${(q)item} "
			    done
			      local ret=$?
			        echo
				  return $ret
			  }

		  __fzfcmd() {
			    [ -n "$TMUX_PANE" ] && { [ "${FZF_TMUX:-0}" != 0 ] || [ -n "$FZF_TMUX_OPTS" ]; } &&
				        echo "fzf-tmux ${FZF_TMUX_OPTS:--d${FZF_TMUX_HEIGHT:-40%}} -- " || echo "fzf"
				}

			fzf-file-widget() {
			  LBUFFER="${LBUFFER}$(__fsel)"
			    local ret=$?
			      zle reset-prompt
			        return $ret
			}
		zle     -N   fzf-file-widget
		bindkey '^T' fzf-file-widget

		# Ensure precmds are run after cd
		fzf-redraw-prompt() {
		  local precmd
		    for precmd in $precmd_functions; do
			        $precmd
				  done
				    zle reset-prompt
			    }
		    zle -N fzf-redraw-prompt

		    # ALT-C - cd into the selected directory
		    fzf-cd-widget() {
		      local cmd="${FZF_ALT_C_COMMAND:-"command find -L . -mindepth 1 \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
			          -o -type d -print 2> /dev/null | cut -b3-"}"
		        setopt localoptions pipefail no_aliases 2> /dev/null
			  local dir="$(eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_ALT_C_OPTS" $(__fzfcmd) +m)"
			    if [[ -z "$dir" ]]; then
				        zle redisplay
					    return 0
					      fi
					        cd "$dir"
						  unset dir # ensure this doesn't end up appearing in prompt expansion
						    local ret=$?
						      zle fzf-redraw-prompt
						        return $ret
						}
					zle     -N    fzf-cd-widget
					bindkey '\ec' fzf-cd-widget

					# CTRL-R - Paste the selected command from history into the command line
					fzf-history-widget() {
					  local selected num
					    setopt localoptions noglobsubst noposixbuiltins pipefail no_aliases 2> /dev/null
					      selected=( $(fc -rl 1 | perl -ne 'print if !$seen{(/^\s*[0-9]+\s+(.*)/, $1)}++' |
						          FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} $FZF_DEFAULT_OPTS -n2..,.. --tiebreak=index --bind=ctrl-r:toggle-sort $FZF_CTRL_R_OPTS --query=${(qqq)LBUFFER} +m" $(__fzfcmd)) )
					        local ret=$?
						  if [ -n "$selected" ]; then
							      num=$selected[1]
							          if [ -n "$num" ]; then
									        zle vi-fetch-history -n $num
										    fi
										      fi
										        zle reset-prompt
											  return $ret
										  }
									  zle     -N   fzf-history-widget
									  bindkey '^R' fzf-history-widget

								  } always {
								    eval $__fzf_key_bindings_options
								      'unset' '__fzf_key_bindings_options'
							      }
