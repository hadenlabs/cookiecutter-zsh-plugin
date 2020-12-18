#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install {{cookiecutter.package_name}} for osx or linux.
#
# Authors:
#   {{cookiecutter.author_name}} <{{cookiecutter.author_email}}>
#

ZSH_{% filter upper %}{{cookiecutter.package_name}}_PATH{% endfilter %}=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/pkg/main.zsh
