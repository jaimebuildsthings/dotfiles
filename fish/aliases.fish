alias gco 'git checkout'
alias gds 'git diff --staged'
alias gd 'git diff'
alias gs 'git status'
alias git-skip-current 'git ls-files -z | xargs -0 git update-index --skip-worktree'
alias git-unskip-current 'git ls-files -z | xargs -0 git update-index --no-skip-worktree'
alias podmanc 'podman-compose'
alias dockerc 'docker-compose'
alias k 'kubectl'
alias cdc 'cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias skip-tree 'git update-index --skip-worktree'
alias unskip-tree 'git update-index --no-skip-worktree'
abbr --add dotdot --regex '^\.\.+$' --function _multicd
alias pn=pnpm
