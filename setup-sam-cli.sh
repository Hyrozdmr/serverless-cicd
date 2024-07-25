# setup-sam-cli.sh
#!/bin/bash

# Check if SAM CLI is installed
if ! command -v sam &> /dev/null
then
    echo "SAM CLI not found, installing..."

    # Install SAM CLI
    curl "https://d1uj6qtbmh3dt5.cloudfront.net/aws-sam-cli-macos-x86_64.zip" -o "sam-cli-macos.zip"
    unzip sam-cli-macos.zip -d sam-installation
    sudo ./sam-installation/install
else
    echo "SAM CLI already installed"
fi
