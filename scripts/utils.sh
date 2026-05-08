#!/usr/bin/env bash

print_header() {
    echo
    echo "================================="
    echo "$1"
    echo "================================="
    echo
}

print_success() {
    echo "✔ $1"
}

print_error() {
    echo "✘ $1"
}

run_cmd() {
    if [[ "$DRY_RUN" == true ]]; then
        echo "[DRY RUN] $*"
    else
        eval "$@"
    fi
}

ensure_not_root() {
    if [[ "$EUID" -eq 0 ]]; then
        print_error "Do not run as root"
        exit 1
    fi
}

detect_os() {
    if [[ -f /etc/debian_version ]]; then
        OS="debian"
    else
        print_error "Unsupported OS"
        exit 1
    fi
}

backup_file() {
    local file="$1"

    if [[ -e "$file" && ! -L "$file" ]]; then
        mv "$file" "${file}.backup"
    fi
}