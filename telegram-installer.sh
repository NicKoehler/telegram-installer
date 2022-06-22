#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'
DEPS="wget nohup sudo tar"

trap exit INT

for dep in $DEPS; do
    if ! command -v $dep >/dev/null 2>&1; then
        echo -e "${RED}$dep is not installed.${RESET}"
        exit 1
    fi
done

sudo sh -c "wget -q --show-progress -O - https://telegram.org/dl/desktop/linux | tar xJ -C /opt/ && ln -sf /opt/Telegram/Telegram /usr/local/bin/telegram-desktop"

echo -e "${GREEN}Telegram has been installed.${RESET}"

nohup telegram-desktop </dev/null >/dev/null 2>&1 &

exit 0
