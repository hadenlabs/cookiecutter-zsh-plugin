#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function {{cookiecutter.package_name}}::config::main::factory {
    # shellcheck source=/dev/null
    source {{ "${ZSH_" }}{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}{{ "_PATH}" }}/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source {{ "${ZSH_" }}{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}{{ "_PATH}" }}/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source {{ "${ZSH_" }}{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}{{ "_PATH}" }}/config/linux.zsh
      ;;
    esac
}

{{cookiecutter.package_name}}::config::main::factory
