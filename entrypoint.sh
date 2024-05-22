#!/bin/bash
# Specifies the script interpreter to be Bash.

echo "==========================="
# Prints a line of equal signs to the console, likely for visual separation in logs.

git config --global user.name "${GITHUB_ACTOR}"
# Sets the global Git username configuration to the value of the GITHUB_ACTOR environment variable.

git config --global user.email "${INPUT_EMAIL}"
# Sets the global Git email configuration to the value of the INPUT_EMAIL environment variable.

git config --global --add safe.directory /github/workspace
# Adds the /github/workspace directory to the list of safe directories for Git. This avoids potential security issues when running Git commands in this directory.

python3 /usr/bin/feed.py
# Executes the Python script located at /usr/bin/feed.py using Python 3.

git add -A && git commit -m "Update feed "
# Stages all changes in the repository and creates a commit with the message "Update feed".

git push --set-upstream origin main
# Pushes the commit to the main branch of the remote repository, setting the upstream branch to main if it's not already set.

echo "==========================="
# Prints another line of equal signs to the console, likely for visual separation in logs.
