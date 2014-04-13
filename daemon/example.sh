#!/bin/bash
cd ~
screen -dmS $(basename $0 .sh) daemon
