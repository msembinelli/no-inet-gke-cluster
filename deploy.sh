#!/bin/bash

gcloud auth application-default login

for i in "network" "firewall-rules" "DNS" "priv-cluster"
do
    ( cd "$i" && terraform init && terraform apply -var-file ../variables.tfvars -auto-approve )
done
