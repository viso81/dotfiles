#!/usr/bin/env fish
bw get item qq_mail_app_password | jq -j '.fields[] | select(.name="app_password") | .value'
