#!/usr/bin/env bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo " Rebuilding NixOS..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo

sudo nixos-rebuild switch

echo
echo "✓ Rebuild complete."
