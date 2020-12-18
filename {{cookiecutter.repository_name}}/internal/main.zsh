#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function {{cookiecutter.package_name}}::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PATH}"/internal/linux.zsh
      ;;
    esac
}

{{cookiecutter.package_name}}::internal::main::factory

if ! type -p {{cookiecutter.package_name}} > /dev/null; then {{cookiecutter.package_name}}::internal::{{cookiecutter.package_name}}::install; fi
