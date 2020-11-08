#!/bin/bash

sudo wget -O- https://telegram.org/dl/desktop/linux | tar xJ -C /opt/
sudo ln -s /opt/Telegram/Telegram /usr/local/bin/telegram-desktop
