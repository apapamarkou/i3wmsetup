#!/bin/bash

# Username setup
read -p "Enter a name for Git (leave blank to pass): " user_name
# Check if not empty
if [[ -n "$user_name" ]]; then
    git config --global user.name "$user_name"
    echo "Git username set to: $user_name"
else
    # Αν είναι κενό, δεν κάνουμε τίποτα
    echo "Git username didn't set."
fi

# Email setup
read -p "Enter an email for Git (leave blank to pass): " user_email
# Check if not empty
if [[ -n "$user_email" ]]; then
    git config --global user.email "$user_email"
    echo "Git email set to: $user_email"
else
    # Αν είναι κενό, δεν κάνουμε τίποτα
    echo "Git email didn't set."
fi

git config --global credential.helper 'cache --timeout 28800'
git config --global core.editor nano

