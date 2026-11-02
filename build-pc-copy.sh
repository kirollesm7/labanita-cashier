#!/bin/sh
# Rebuilds the cashier-PC copy (labanita-register.html) from the online page source.
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"></head><body>\n'
  cat online-page/labanita-cashier.html
  printf '\n</body></html>\n'; } > labanita-register.html
