#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function {{cookiecutter.package_name}}::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/pkg/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/pkg/alias.zsh

    # shellcheck source=/dev/null
    source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/pkg/helper.zsh
}

{{cookiecutter.package_name}}::pkg::main::factory
