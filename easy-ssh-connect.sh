#!/bin/bash

# Get all hosts defined in ~/.ssh/config
hosts=($(grep "^Host " ~/.ssh/config | awk '{print $2}'))

# Print the list of hosts
echo "Choose one of the following hosts:"
for i in "${!hosts[@]}"; do
  echo "$((i+1)). ${hosts[i]}"
done

# Read the choice from the user
read -p "Enter your choice (1-${#hosts[@]}): " choice

# Check if the choice is valid
if [[ $choice -gt 0 ]] && [[ $choice -le ${#hosts[@]} ]]; then
  # Run the ssh command with the selected host
  ssh "${hosts[choice-1]}"
else
  echo "Invalid choice."
fi
