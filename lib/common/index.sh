#!/usr/bin/env bash

## Environment variables
## https://asdf-vm.com/plugins/create.html#environment-variables-overview

## General information
KC_ASDF_RES_PATH="${KC_ASDF_PLUGIN_PATH:?}/res"
KC_ASDF_ADDON_LIST=""
export KC_ASDF_RES_PATH KC_ASDF_ADDON_LIST

## Plugin information
KC_ASDF_ORG="kc-workspace"
KC_ASDF_NAME="asdf-codecrafters"
KC_ASDF_REPO="https://github.com/kc-workspace/asdf-codecrafters"
export KC_ASDF_ORG KC_ASDF_NAME KC_ASDF_REPO

## Application information
KC_ASDF_APP_TYPE="standalone"
KC_ASDF_APP_NAME="codecrafters"
KC_ASDF_APP_WEBS="https://codecrafters.io/"
KC_ASDF_APP_DESC="A command-line tool that allows you to run tests & view test results from your local machine"
KC_ASDF_APP_CMDS="
- test    - test if cli exist and executable
- version - print *plugin* version
"
KC_ASDF_APP_REPO="https://github.com/codecrafters-io/cli"
export KC_ASDF_APP_TYPE KC_ASDF_APP_NAME
export KC_ASDF_APP_WEBS KC_ASDF_APP_DESC
export KC_ASDF_APP_CMDS KC_ASDF_APP_REPO

# shellcheck source-path=SCRIPTDIR/internal.sh
source "${KC_ASDF_PLUGIN_PATH:?}/lib/common/internal.sh" || exit 1
# shellcheck source-path=SCRIPTDIR/defaults.sh
source "${KC_ASDF_PLUGIN_PATH:?}/lib/common/defaults.sh" || exit 1
