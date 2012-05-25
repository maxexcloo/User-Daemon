#!/bin/bash
cd ~/unsorted
rm -rf ~/.local
screen -d -m -S vlc cvlc http://www.example.com/ --sout "#http{mux=raw,dst=0.0.0.0:8080/link.pls}"
