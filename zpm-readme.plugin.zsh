#!/usr/bin/env zsh

autoload -Uz zpm-readme

_zpm_extend_commands+=('readme:Show README for plugin')

function _zpm_readme_completion() {
  _describe -t commands "zpm subcommand" zsh_loaded_plugins
}
