#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function {{cookiecutter.package_name}}::internal::{{cookiecutter.package_name}}::install {
    message_info "Installing ${{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_MESSAGE_BREW}"
        return
    fi
    brew install {{cookiecutter.package_name}}
    message_success "Installed ${{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PACKAGE_NAME}"
}
