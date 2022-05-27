#!/bin/sh

set -e
aws secretsmanager --region=us-east-1 get-secret-value   --secret-id Devenv   --query SecretString  --output text | jq -r ' to_entries | .[] | .key + "=" + (.value | @sh)' >> Devenv
  
