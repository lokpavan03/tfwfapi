#!/bin/bash

# 1. Define Variables
$ curl \
  --header "Authorization: Bearer $Token" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @payload.json \
  https://app.terraform.io/api/v2/organizations/lok/workspaces-1
