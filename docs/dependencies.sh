#!/bin/bash

packagename=evince
debtree "${packagename}" --max-depth=3 --condense > "${packagename}.dot"
dot -Tpng -o "${packagename}.png" "${packagename}.dot"