#!/bin/bash
#idan twito 311125249
grep -n -w $2 $1 | sed 's,:, ,'
