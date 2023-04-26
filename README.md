# TermRecorder
A helper script to create terminal recordings

## Record in SVG Easily (Suggest checking all the codes before using in a vm, always a VM 😉)..

The steps here needs both [asciinema](https://github.com/asciinema/asciinema) and [svg-term-cli](https://github.com/marionebl/svg-term-cli) installed.

To install asciinema in Ubuntu, run:
```
sudo apt install asciinema
```

To install svg-term-cli, you first need to install nodejs and npm. [Follow this link](https://itsfoss.com/install-nodejs-ubuntu/) to learn how to install it.
Once installed, run:
```
sudo npm install -g svg-term-cli
```
The next requirement is agg. You can grab a Linux binary from their [releases page](https://github.com/asciinema/agg). Look for a "linux-gnu" file



Once installed, you can download the TERM_RECORDER zip file, extract and run `./install.sh`



It does the following:

1. Creates two directories, 
   
   1. `~/svg-create-program ` and `~/Pictures/terminal_SVG`
   
   2. Copies the files inside this folder to the directory `~/svg-create-program`
   
   3. Gives them execution permission
   
   4. Adds the directory `~/svg-create-program` to your PATH in `~/.bashrc`
   
   You need to restart the shell to get effect.
   
 Once done, rename the agg*** file to just `agg` and copy it to `svg-create-program` directory. Give it execution permission.



Once install is completed, run the following as per need:

1. `editshow`: To edit the caption, that will display once `showing` command is executed. It is just a nano command to open the showing file.

2. `showing`: Prints the content. Just to add a caption to the recording.

3. `svg-creator-help` for quick overview



## To Create SVG/GIF:

Run `recordterm <filename>`, where **filename** is the name of the SVG you want. (No spaces). This will do several things:

- Runs `asciinema` to record the session. As soon as you enter `createsvg <filename>` you can start recording. Once completed, finish record by `CTRL+D`.

- It will create the SVG/GIF according to your requirement (follow on screen instructions) and save it to `~/Pictures/terminal_SVG`

- It will remove the residual `.cast` file.


## Changing the Size of terminal
Sometimes, the default size on the program won't be sufficient. You may need to change the size of the result terminal. In order to do this, edit the `recordterm` file located in `/home/$USER/svg-create-program` folder. Change the width and hieght of the SVG otput.

![edit-recordterm-file](https://user-images.githubusercontent.com/104882604/234506677-fe277ddd-1bf0-4449-8d51-5cb0c62160ab.png)

Save the file and run the command again. This time, it will give the output in the new width and hieght.
