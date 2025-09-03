#!/bin/bash

detect_environment() {

    local kernel env bash_version
    kernel="$(uname -s)"
    bash_version="${BASH_VERSION%%(*}"

    case "$kernel" in
        Linux)
            if grep -qi "microsoft" /proc/version 2>/dev/null; then
                if uname -r | grep -qi "microsoft-standard"; then
                    env="WSL2"
                else
                    env="WSL1"
                fi
            else
                env="Linux"
            fi
            ;;
        Darwin)
            env="macOS"
            ;;
        MINGW*|MSYS*|CYGWIN*)
            env="Git Bash"
            ;;
        *)
            env="Unknown"
            ;;
    esac

    echo "$env;bash $bash_version"

}

detect_environment
