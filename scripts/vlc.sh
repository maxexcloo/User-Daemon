#!/bin/bash
cd ~
rm -rf ~/.local
screen -dmS vlc cvlc http://www.example.com/ --sout "#http{mux=raw,dst=0.0.0.0:8080/link.pls}"
