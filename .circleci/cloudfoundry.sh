#!/bin/bash
# ...first add the Cloud Foundry Foundation public key and package repository to your system

# Use the URL to a Debian 64 bit installer select from here:
# https://github.com/cloudfoundry/cli/releases
# This is the source file after following the redirect
wget https://s3.amazonaws.com/go-cli/releases/v6.12.4/cf-cli_amd64.deb -qO temp.deb && sudo dpkg -i temp.deb

rm temp.deb

cf api $CF_API
cf login --u $CF_USERNAME --p $CF_PASSWORD --o $CF_ORGANIZATION --s $CF_SPACE
