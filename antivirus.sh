#!/usr/bin/env bash

cd ~/colegio/7I/auditoria/bitfort-antivirus/
gnome-terminal --tab --title="Btop" -- sh -c 'btop; bash';
gnome-terminal --tab --title="Trashcoding" -- sh -c 'nvim .; bash';
brave-browser "https://trello.com/b/nMotDTZG/auditoria" &
sleep 10
exit
