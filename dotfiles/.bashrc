
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash