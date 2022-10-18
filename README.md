# Running Virtualbox using vagrant
## Installing Ruby for windows
First step to get virtualbox running is to download its dependencies, one of which is ruby. As i am using windows, I be downloading the windows version using the link below
```
https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.6.6-1/rubyinstaller-devkit-2.6.6-1-x64.exe
```
Once installing the require ruby, we can make sure we have by going into our git-bash and writing:
```bash
$ ruby --version
```
## Installing vagrant
To control the virtualbox, we will be using a program called Vagrant. Vagrant is a program that will run on the developers machine to creaste a "virtual" machine inside. We will then be able to complete control this virtual machine. <br/>
Let's install Vagrant now. As I am using windows, I will be installing the windows version but there is also available for MAC and Linux. 
```
https://www.vagrantup.com/
```


### Vagrant
- at the start when you first go in, you can update any software that needs updating. the command line for ubuntu is `sudo apt-get update` - this also checks if you have internet connection as updating softwares needs an internet connection
- the next code is to upgrade any software that are missing, the command line for this is: `sudo apt-get upgrade` and accept any upgrade with just pressing y and enter or to automate this, just add a `-y` at the end of the command line.
- To know where you are inside ubuntu, you run the command `pwd` and this shows you the path to your location.
- whoami `uname` or `uname -a`
- how to creaste a file in ubuntu `touch filename` &`nano filename`
- how to check file/folder available in current location `ls` or to check all files hidden files as well `ls -a`
- how to create a folder `mkdir folder-name`
- How to navigate to the folder `cd folder-name`
- How to navigate back/out `cd ..` or`cd` - to go straight back to `home`
- How to delete a file/folder `rm -rf file/foldername`
- Research how to copy file from 1 location to another
- copy test.txt into app folder
- To copy and paste a file, you can use the command `cp [copyfilelocation] [pastelocation]`