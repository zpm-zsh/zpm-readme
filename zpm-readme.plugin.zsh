#!/usr/bin/env zsh

autoload -Uz zpm-readme

_zpm_extend_commands+=('readme:Show README for plugin')

function _zpm_readme_completion() {

  local _zpm_plugins=()

  for key value in ${(kv)_ZPM_plugins_full}; do
    _zpm_plugins+=("${key}")
  done

  _describe -t commands "zpm subcommand" _zpm_plugins
}
