# TermRecorder
A helper script to create terminal recordings

## Record in SVG Easily (Suggest checking all the codes before using in a vm, always a VM 😉)..

The steps here needs both [asciinema](https://github.com/asciinema/asciinema), pv, wget, and [svg-term-cli](https://github.com/marionebl/svg-term-cli) installed.

To install asciinema in Ubuntu, run:
```
sudo apt install asciinema pv wget
```

To install svg-term-cli, you first need to install nodejs and npm. [Follow this link](https://itsfoss.com/install-nodejs-ubuntu/) to learn how to install it.

Once installed, run:
```
sudo npm install -g svg-term-cli
```

Once installed, you can download the TERM_RECORDER zip file, extract and run `./install.sh`

> To convert an asciinema cast file to GIF, the script uses another [program called agg](https://github.com/asciinema/agg).
The installation script grabs a Linux binary of `agg` from their [releases page](https://github.com/asciinema/agg/releases/), using `wget`.
The current version, pulled here is v1.4.3.


The installer script does the following:

1. Creates two directories, 
   
   1. `~/.svg-create-program ` and `~/Pictures/terminal_SVG`
   
   2. Copies the files inside this folder to the directory `~/.svg-create-program`
   
   3. Gives them execution permission

   4. Downloads a release of `agg` from its github page

   5. Give `agg` execution permission and move it to the `svg-create-program` directory.
   
   6. Adds the directory `~/.svg-create-program` to your PATH in `~/.bashrc`
   
   You need to restart the shell to get effect.
   

Once install is completed, run the following as per need:

1. `editshow`: To edit the caption, that will display once `showing` command is executed. It is just a nano command to open the showing file.

2. `showing`: Prints the content. Just to add a caption to the recording.

3. `svg-creator-help` for quick overview



## To Create SVG/GIF:

Run `recordterm <filename>`, where **filename** is the name of the SVG you want. (No spaces). This will do several things:

- Runs `asciinema` to record the session. As soon as you enter `recordterm <filename>` you can start recording. Once completed, finish record by `CTRL+D`.

- It will create the SVG/GIF according to your requirement (follow on screen instructions). The output will be saved to `~/Pictures/terminal_SVG`

- It will remove the residual `.cast` file, which is created as part of ASCIINEMA recording.


## Changing the Size of terminal
At the moment, there are several recording sizes, that suits my needs. They are:
- 80x24: Use `recordterm <file-name>`
- 120x10: Use `recordterm10 <file-name>`
- 120x15: Use `recordterm15 <file-name>`
- 120x20: Use `recordterm20 <file-name>`
- 120x25: Use `recordterm25 <file-name>`
- 70x15: Use `recordterm-small-square <file-name>`
- 82x5: Use `recordterm-tiny <file-name>`

When I learn more, I will change this to dynamic :)
