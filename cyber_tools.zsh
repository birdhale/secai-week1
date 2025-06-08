#!/bin/zsh
deploy_tool() {
    local tool_name=$1
    if [[ -z "$tool_name" ]]; then
        echo "Error: Specify a tool to deploy."
        return 1
    fi
    echo "Deploying $tool_name to the mainframe..."
}

deploy_tool "Nmap"
deploy_tool "Metasploit"
deploy_tool

