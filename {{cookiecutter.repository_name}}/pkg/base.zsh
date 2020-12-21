#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function {{cookiecutter.package_name}}::dependences {
    message_info {{ "Installing ${" }}{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}{{ "_PACKAGE_NAME}" }}
    message_success {{ "Installed ${" }}{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}{{ "_PACKAGE_NAME}" }}
}

function {{cookiecutter.package_name}}::post_install {
    message_info {{ "Installing ${" }}{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}{{ "_PACKAGE_NAME}" }}
    message_success {{ "Installed ${" }}{% filter upper %}{{cookiecutter.package_name}}{% endfilter %}{{ "_PACKAGE_NAME}" }}
}
