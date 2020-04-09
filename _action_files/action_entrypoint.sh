#!/bin/bash
set -e

# setup ssh: allow key to be used without a prompt and start ssh agent
export GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
eval "$(ssh-agent -s)"

######## Run notebook/word converter ########
# word converter using pandoc
#/fastpages/word2post.sh
# notebook converter using nbdev
#cp /fastpages/settings.ini .
python /fastpages/nb2post.py


