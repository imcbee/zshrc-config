# -------------------------------------------------------------------
# DIBNET Aliases
# -------------------------------------------------------------------
##### CHANGE THESE VARIABLES TO POINT TO WHERE YOUR PROJECTS ARE LOCATED #####
dibnet_2='~/code/dibnet-2'
dibnet_3='~/code/dibnet-3'
icf='~/code/dibnet'

# change directories
alias code='cd ~/code'
alias pull-all='code; find . -mindepth 2 -maxdepth 2 -type d -print -exec git -C {} pull \;'
alias bah-angular-uswds='cd '$dibnet_3'/bah-angular-uswds'
alias dibnet-docker='cd '$dibnet_3'/dibnet-docker'
alias dibnet-services='cd '$dibnet_3'/dibnet-services'
alias dibnet-terraform='cd '$dibnet_3'/dibnet-terraform'
alias dibnet-ui='cd '$dibnet_3'/dibnet-ui'
alias dibnet-commons='cd '$dibnet_3'/dibnet-commons'
alias dibnet-icf-automation='cd '$icf'/dibnet-icf-automation'
alias dibnet-automation='cd '$dibnet_3'/dibnet-automation'
alias dibnet-icf='cd '$icf'/dibnet-icf/icf-app'
alias dibnet-2='cd '$dibnet_2''

# build scripts
alias build-all='dibnet-docker; ./scripts/build-all.sh skipTests'
alias build-icf='dibnet-docker; ./scripts/build-icf.sh skipTests'
alias cleanup='dibnet-docker; ./scripts/cleanup.sh'
alias deploy-lite-icf='dibnet-docker; ./scripts/build-all.sh skipTests; ./scripts/build-icf.sh skipTests; ./scripts/start.sh lite-icf'
alias redeploy-lite-icf='dibnet-docker; ./scripts/cleanup.sh && ./scripts/build-icf.sh skipTests && ./scripts/start.sh lite-icf'
alias deploy-aws-icf='dibnet-docker; ./scripts/cleanup.sh ./scripts/build-all.sh skipTests; ./scripts/build-icf.sh skipTests; ./scripts/start.sh aws-icf' 
alias redeploy-aws-icf='dibnet-docker; ./scripts/cleanup.sh && ./scripts/build-icf.sh skipTests && ./scripts/start.sh aws-icf'
alias redeploy-service='dibnet-docker; ./scripts/redeploy-service.sh'
alias redeploy-ui='dibnet-docker; ./scripts/redeploy-ui.sh'
alias start='dibnet-docker; ./scripts/start.sh'
alias build-lite-logs='build-all; scripts/start.sh lite && scripts/logs.sh'
alias build-openldap-logs='build-all; scripts/start.sh openldap && scripts/logs.sh'

# delete all docker images and volumes
alias prune='docker system prune -a --volumes'

# remove the node_modules folder and the package-lock.json file from the current directory
alias remove-node_modules='rm -rf node_modules; rm package-lock.json'

# -------------------------------------------------------------------
# Obsidian Aliases
# -------------------------------------------------------------------
alias obsidian='cd ~/Documents/Work-Obsidian-Github-Repo'
alias obsidian-status='obsidian; git status'
alias obsidian-update='obsidian; git add .; git commit -m "obsidian update"; git push origin main;'

# -------------------------------------------------------------------
# NPM Aliases
# -------------------------------------------------------------------
alias nr="npm run"
alias ni="npm install"
alias ns="npm start"
alias nu="npm uninstall"

# -------------------------------------------------------------------
# Git Aliases
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'

# leverage an alias from the ~/.gitconfig
alias gh='git hist'