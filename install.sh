#!/bin/bash
echo "Expecting you have installed both 'asciinema' and 'svg-term-cli'..."
echo

rm -rf /home/$USER/.svg-create-program
PROG_DIR="/home/$USER/.svg-create-program"
mkdir -p "$PROG_DIR"
echo "Directory '$PROG_DIR' is created..."

DEST_DIR="/home/$USER/Pictures/terminal_SVG"

if [ ! -d "$DEST_DIR" ]; then
    # If it doesn't exist, create it
    mkdir -p "$DEST_DIR"
    echo "Directory '$DEST_DIR' created..."
fi

chmod +x recordterm
chmod +x editshow
chmod +x showing
chmod +x svg-creator-help

cp recordterm /home/$USER/.svg-create-program
cp editshow /home/$USER/.svg-create-program
cp showing /home/$USER/.svg-create-program
cp svg-creator-help /home/$USER/.svg-create-program

echo "Copied program files..."

echo "Downloading AGG from GitHub..."

wget https://github.com/asciinema/agg/releases/download/v1.4.3/agg-x86_64-unknown-linux-gnu

echo "Download Complete!"

mv agg-x86_64-unknown-linux-gnu agg
chmod +x agg
mv agg /home/$USER/.svg-create-program

echo "Moved AGG to '$PROG_DIR'"

PATH_TO_ADD='export PATH=~/.svg-create-program:$PATH'

# Check if .bashrc already contains the line

if ! grep -qF "$PATH_TO_ADD" ~/.bashrc; then
    # If not found, append the line to the end of .bashrc
    echo "$PATH_TO_ADD" >> ~/.bashrc
    echo "Added the '$PATH_TO_ADD' to your bashrc"
fi

echo "Thanks. It's Now installed. Restart current session to start working. Also, run svg-creator-help to get an overview"
