setopt always_to_end            # When complete from middle, move cursor
setopt append_history           # Append to history file, not overwrite it
setopt auto_cd                  # If a command is not in the hash table, and there exists an executable directory by that name, perform the cd command to that directory.
setopt complete_in_word         # Always auto complete, not just at the end
setopt extendedglob             # Extra filename generation features
setopt hist_ignore_dups         # Don't enter command in history if it is duplicate of previous command
setopt hist_find_no_dups        # Don't display duplicates when searching commands
setopt inc_append_history       # Append history item as soon as command is executed, rather than waiting until the shell is killed
setopt nohup										# In general, we don't kill background jobs upon logging out
setopt prompt_subst             # parameter expansion, command substitution and arithmetic expansion is performed in prompts
