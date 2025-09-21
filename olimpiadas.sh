#!/usr/bin/env bash
cd ~/colegio/7I/olimpiadas-fvhn/backend;
gnome-terminal --tab --title="Btop" -- sh -c 'insomnia & btop; bash';
gnome-terminal --tab --title="Trashcoding" -- sh -c 'nvim .; bash';
gnome-terminal --tab --title="Logging" -- sh -c 'echo "run npm run dev"; bash';
brave-browser "https://trello.com" &
youtube-music &
#dbeaver &
sleep 10
exit
