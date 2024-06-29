#!/bin/bash

truecallerjs -s "+91$1" | grep -w 'name' | awk -F ': ' '{print $2}'
