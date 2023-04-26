#!/bin/bash
echo "Expecting you have installed both 'asciinema' and 'svg-term-cli'..."
echo


directory_prog="/home/$USER/.svg-create-program"

if [ ! -d "$directory_prog" ]; then
  mkdir "$directory_prog"
  cp recordterm /home/$USER/.svg-create-program
  cp editshow /home/$USER/.svg-create-program
  cp showing /home/$USER/.svg-create-program
  cp svg-creator-help /home/$USER/.svg-create-program
else
  echo "Skipping: $directory_prog already exists"
fi

directory_pic="/home/$USER/Pictures/terminal_SVG"

if [ ! -d "$directory_pic" ]; then
  mkdir "$directory_2"
else
  echo "Skipping: $directory_pic already exists"
fi

chmod +x /home/$USER/.svg-create-program/recordterm
chmod +x /home/$USER/.svg-create-program/editshow
chmod +x /home/$USER/.svg-create-program/showing
chmod +x /home/$USER/.svg-create-program/svg-creator-help


path_to_add="/home/$USER/.svg-create-program"

if ! grep -q "^export PATH=.*:$path_to_add" ~/.bashrc; then
    echo "Adding program path to your bashrc..."
    echo 'export PATH="$PATH:'"$path_to_add"'"' >> ~/.bashrc
    source ~/.bashrc
else
    echo "Skipping: Program path already present in your bashrc"
fi

echo "Thanks. TermRecorder is now installed for user : $USER. Run svg-creator-help to get an overview"

