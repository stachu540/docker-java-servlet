#!/bin/bash

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install ant 
sdk install gradle
sdk install maven
sdk install kotlin
sdk install springboot
