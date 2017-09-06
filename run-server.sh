#!/bin/bash

IP=$(hostname -I | awk '{ print $2 }')
hugo server -w -b $IP --bind 0.0.0.0
