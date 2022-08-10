#!/usr/bin/env bash

az-setsub() {
  currentSubscription=$(az account show | jq '.name')
  echo "Currently using subscription ${currentSubscription}"
  echo ""

  name="${1}"

  if [ -z "${name}" ]; then
    echo "Available subscriptions:"
    echo "========================"
    az account list --all | jq '.[] | select(.state == "Enabled") | .name' --raw-output
    exit 0
  fi

  subscription=$(az account list --all | jq --arg NAME "${name}" '
    .[]
    | select(.name == $NAME and .state == "Enabled")
    | {id, name}
    ')
  
  if [ -z "${subscription}" ]; then
    echo "Couldn't find subscription with name ${name}"
    return 1
  fi

  echo "Found subscription:"
  jq <<< "${subscription}"

  subscriptionId="$(jq '.id' --raw-output <<< ${subscription})"
  echo "Setting current subscription to id ${subscriptionId}"
  echo ""
  az account set --subscription ${subscriptionId}

  echo ""
  echo "Account after changing subscription:"
  jq <<< $(az account show)
}

