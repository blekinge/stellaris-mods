#!/usr/bin/env bash

SCRIPT_DIR="$HOME/Projects/stellaris-mods"
MOD_DIR="$HOME/.local/share/Paradox Interactive/Stellaris/mod"

for file in $SCRIPT_DIR/*.mod; do
    modname=$(basename "$file" .mod)
    rm -f "$MOD_DIR/$modname"
    rm -f "$MOD_DIR/$modname.mod"
    ln -s "$file" "$MOD_DIR/$modname.mod"
    ln -s "$SCRIPT_DIR/$modname" "$MOD_DIR/$modname"
done

ls -larth "$MOD_DIR/"
