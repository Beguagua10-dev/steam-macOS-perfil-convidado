#!/bin/bash
# Altere 'seu_user_mac' para o nome do seu usuário
ORIGEM="/Users/seu_user_mac/Public/SteamCompartilhada"
MESA="$HOME/Desktop/Jogos_Steam"

echo "1) Hacknet | 2) Half-Life 1 | 3) Half-Life 2"
read -p "Escolha: " op

[ "$op" == "1" ] && J="Hacknet"
[ "$op" == "2" ] && J="Half-Life"
[ "$op" == "3" ] && J="Half-Life 2"

mkdir -p "$MESA" && cp -R "$ORIGEM/$J" "$MESA/"
open "$MESA/$J/"*.app 2>/dev/null || open "$MESA/$J"
