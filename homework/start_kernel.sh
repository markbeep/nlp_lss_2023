#!/usr/bin/env bash
# starts the kernel
var=$(nix-instantiate --eval -E '"LD_LIBRARY_PATH=${(import <nixpkgs>{}).pkgs.stdenv.cc.cc.lib}/lib/"')
export $(echo $var | sed 's/"//g')
/home/mark/Documents/ETH/S6/nlp_lss_2023/homework/.venv/bin/python -m ipykernel_launcher $@
