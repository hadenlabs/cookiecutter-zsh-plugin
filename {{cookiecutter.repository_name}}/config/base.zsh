#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export {% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"
export {% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_MESSAGE_RVM="Please install rvm or use antibody bundle luismayta/zsh-rvm branch:develop"
export {% filter upper %}{{cookiecutter.package_name}}{% endfilter %}_PACKAGE_NAME="{{cookiecutter.package_name}}"