#!/bin/bash

# Takes an array of strings (URLs)
# and clean this array from duplicate entries,
# sort it and output it

array=("brstanley.test-sbdinc.acsitefactory.com" "ccastanley.test-sbdinc.acsitefactory.com" "phstanley.test-sbdinc.acsitefactory.com" "mxstanley.test-sbdinc.acsitefactory.com" "sgstanley.test-sbdinc.acsitefactory.com" "instanley.test-sbdinc.acsitefactory.com" "costanley.test-sbdinc.acsitefactory.com" "arstanley.test-sbdinc.acsitefactory.com" "clstanley.test-sbdinc.acsitefactory.com" "pestanley.test-sbdinc.acsitefactory.com" "lastanley.test-sbdinc.acsitefactory.com" "khstanley.test-sbdinc.acsitefactory.com" "uystanley.test-sbdinc.acsitefactory.com" "mystanley.test-sbdinc.acsitefactory.com" "zastanley.test-sbdinc.acsitefactory.com" "idstanley.test-sbdinc.acsitefactory.com" "pystanley.test-sbdinc.acsitefactory.com" "vestanley.test-sbdinc.acsitefactory.com" "ecstanley.test-sbdinc.acsitefactory.com" "mestanley.test-sbdinc.acsitefactory.com" "mastanley.test-sbdinc.acsitefactory.com" "jpstanley.test-sbdinc.acsitefactory.com" "twstanley.test-sbdinc.acsitefactory.com" "vnstanley.test-sbdinc.acsitefactory.com" "thstanley.test-sbdinc.acsitefactory.com" "trstanley.test-sbdinc.acsitefactory.com" "bostanley.test-sbdinc.acsitefactory.com" "krstanley.test-sbdinc.acsitefactory.com" "uastanley.test-sbdinc.acsitefactory.com" "ccastanley.test-sbdinc.acsitefactory.com" "brstanley.test-sbdinc.acsitefactory.com" "phstanley.test-sbdinc.acsitefactory.com" "rustanley.test-sbdinc.acsitefactory.com" "cnstanley.test-sbdinc.acsitefactory.com" "thstanley.test-sbdinc.acsitefactory.com" "instanley.test-sbdinc.acsitefactory.com" "mestanley.test-sbdinc.acsitefactory.com" "rustanley.test-sbdinc.acsitefactory.com" "mxstanley.test-sbdinc.acsitefactory.com" "arstanley.test-sbdinc.acsitefactory.com" "sgstanley.test-sbdinc.acsitefactory.com" "costanley.test-sbdinc.acsitefactory.com" "trstanely.test-sbdinc.acsitefactory.com" "clstanley.test-sbdinc.acsitefactory.com" "mystanley.test-sbdinc.acsitefactory.com" "cnstanley.test-sbdinc.acsitefactory.com" "zastanley.test-sbdinc.acsitefactory.com" "mastanley.test-sbdinc.acsitefactory.com" "pestanley.test-sbdinc.acsitefactory.com" "idstanley.test-sbdinc.acsitefactory.com" "vnstanley.test-sbdinc.acsitefactory.com" "uystanley.test-sbdinc.acsitefactory.com" "uastanley.test-sbdinc.acsitefactory.com" "lastanley.test-sbdinc.acsitefactory.com" "khstanley.test-sbdinc.acsitefactory.com" "krstanley.test-sbdinc.acsitefactory.com" "ecstanley.test-sbdinc.acsitefactory.com" "jpstanley.test-sbdinc.acsitefactory.com" "twstanley.test-sbdinc.acsitefactory.com" "bostanley.test-sbdinc.acsitefactory.com" "vestanley.test-sbdinc.acsitefactory.com" "pystanley.test-sbdinc.acsitefactory.com" "brbd.test-sbdinc.acsitefactory.com" "ccabd.test-sbdinc.acsitefactory.com" "phbd.test-sbdinc.acsitefactory.com" "mxbd.test-sbdinc.acsitefactory.com" "sgbd.test-sbdinc.acsitefactory.com" "inbd.test-sbdinc.acsitefactory.com" "cobd.test-sbdinc.acsitefactory.com" "arbd.test-sbdinc.acsitefactory.com" "clbd.test-sbdinc.acsitefactory.com" "pebd.test-sbdinc.acsitefactory.com" "labd.test-sbdinc.acsitefactory.com" "khbd.test-sbdinc.acsitefactory.com" "uybd.test-sbdinc.acsitefactory.com" "mybd.test-sbdinc.acsitefactory.com" "zabd.test-sbdinc.acsitefactory.com" "idbd.test-sbdinc.acsitefactory.com" "pybd.test-sbdinc.acsitefactory.com" "vebd.test-sbdinc.acsitefactory.com" "ecbd.test-sbdinc.acsitefactory.com" "mebd.test-sbdinc.acsitefactory.com" "mabd.test-sbdinc.acsitefactory.com" "jpbd.test-sbdinc.acsitefactory.com" "twbd.test-sbdinc.acsitefactory.com" "vnbd.test-sbdinc.acsitefactory.com" "thbd.test-sbdinc.acsitefactory.com" "trbd.test-sbdinc.acsitefactory.com" "bobd.test-sbdinc.acsitefactory.com" "krbd.test-sbdinc.acsitefactory.com" "uabd.test-sbdinc.acsitefactory.com" "ccabd.test-sbdinc.acsitefactory.com" "brbd.test-sbdinc.acsitefactory.com" "phbd.test-sbdinc.acsitefactory.com" "rubd.test-sbdinc.acsitefactory.com" "cnbd.test-sbdinc.acsitefactory.com" "thbd.test-sbdinc.acsitefactory.com" "inbd.test-sbdinc.acsitefactory.com" "mebd.test-sbdinc.acsitefactory.com" "rubd.test-sbdinc.acsitefactory.com" "mxbd.test-sbdinc.acsitefactory.com" "arbd.test-sbdinc.acsitefactory.com" "sgbd.test-sbdinc.acsitefactory.com" "cobd.test-sbdinc.acsitefactory.com" "trbd.test-sbdinc.acsitefactory.com" "clbd.test-sbdinc.acsitefactory.com" "mybd.test-sbdinc.acsitefactory.com" "cnbd.test-sbdinc.acsitefactory.com" "zabd.test-sbdinc.acsitefactory.com" "mabd.test-sbdinc.acsitefactory.com" "pebd.test-sbdinc.acsitefactory.com" "idbd.test-sbdinc.acsitefactory.com" "vnbd.test-sbdinc.acsitefactory.com" "uybd.test-sbdinc.acsitefactory.com" "uabd.test-sbdinc.acsitefactory.com" "labd.test-sbdinc.acsitefactory.com" "khbd.test-sbdinc.acsitefactory.com" "krbd.test-sbdinc.acsitefactory.com" "ecbd.test-sbdinc.acsitefactory.com" "jpbd.test-sbdinc.acsitefactory.com" "twbd.test-sbdinc.acsitefactory.com" "bobd.test-sbdinc.acsitefactory.com" "vebd.test-sbdinc.acsitefactory.com" "pybd.test-sbdinc.acsitefactory.com")

sorted_unique_array=($(echo "${array[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))

printf '"%s" ' "${sorted_unique_array[@]}"