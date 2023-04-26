#!/bin/bash
echo "Expecting you have installed both 'asciinema' and 'svg-term-cli'..."
echo
mkdir /home/$USER/.svg-create-program
mkdir /home/$USER/Pictures/terminal_SVG
chmod +x recordterm
chmod +x editshow
chmod +x showing
chmod +x svg-creator-help

cp recordterm /home/$USER/.svg-create-program
cp editshow /home/$USER/.svg-create-program
cp showing /home/$USER/.svg-create-program
cp svg-creator-help /home/$USER/.svg-create-program

echo "export PATH=/home/$USER/.svg-create-program:$PATH" >> ~/.bashrc
echo "Thanks. It's Now installed. Restart current session to start working. Also, run svg-creator-help to get an overview"

