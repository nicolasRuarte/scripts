#!/usr/bin/env bash
volume="$(amixer sget Master | grep -i -E -o --max-count=1 "[0-9][0-9]?[0-9]?%")"

echo "Volumen: $volume"
