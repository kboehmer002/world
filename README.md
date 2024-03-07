#  README Instructions
## Stoneblock Server
Contains all stoneblock files to be pushed and pulled to share stoneblock hosting computer

## File Management
* Initial clone...
  * When you are initally getting the repo: `git clone https://github.com/kboehmer002/world.git`
  * You only need to do this once... unless you delete the whole thing on your local computer
* After you have cloned the repo...
  * Pull the current code from the repo: 'git pull'
  * You must be inside the repo folder on your local divice (in this case the folder  `stoneblock`) to use this command
    *  `cd stoneblock` 
* Running the server...
  * First things first, handle your port forwarding *(go to the "Port Forwarding" heading for instructios)* 
  * Start: Click the  `start.bat` file so it will run
    * otherwise while you are in the folder you can run it with `./start.bat`
  * Stop: Type `stop` in either the GUI or the CMD line
  * Admin Privilages: `/op USERNAME_TO_ADD`
  * Teleport: `/tp USER_TO_TP USER_AT_LOC` ; this can be done from the CMD line, the GUI, or (if the user has admin privilages) the chat log


### Easiest way to run and keep up to date
*Note: you must set your username, password, and email before you can `push`- go to the "Git Configurations" heading for instructions*
*Note: the cd command is assuming you are in the directory the `world` folder is in*
```
cd world
git pull
./start.bat
```
when you are finished...
*Note: You might want to copy+paste the `world` folder into a `backups` folder so you have a copy you can revert to if the current file becomes corrupted*
  * (from inside the initial folder) `cp ./Runserver/world ./Backups/THEFLDRYOUMADETOSAVEIT`
```
stop
git add world
git commit -am "you can add any msg you want this is just an example but def use the quotes"
git push
```
* Note: if you want to save a change to `start.bat` as well then after `git add world` type the comand `git add start.bat`
* Note: if you want to add a backup then do `cp ./Runserver/world ../` and `git add .\Backups`
* Next time you go to start it repeat the process. This keeps the current running world up to date for whoever wants to host next.
* Find the server at your `GLOBAL_IP:PORT_FORWARDED` 
  * eg. `201.131.137.100:2955`

# Git Configurations
https://git-scm.com/downloads
* Create a Github account and get permission from repo owner
* set your user data by doing the following commands and changing the info in the quotes to your associated login information
```
    git config --global user.name = "YOURACCONTUSER"
    git config --global user.email = "YOURACCOUNTEMAIL"
    git config --global user.password = "YOURACCOUNTPASSWORD"
```

# Port Forwarding
1. Find your router login info
   * Most people don't change the username/password (some people don't have a username)
   * In most cases this information listed on the back/bottom of your router
2. Get into your router
   * Go to your browser and type in the *local* IP address
   * This is probably something along the lines of `192.168.1.1` ... if you are lazy like me type in `http://localhost`
   * Login with the router info from step 1
3. Find Port Forwarding
   * Somewhere in your router you will find wifi settings go there
   * Look for "Port Forwarding"
     * It may be a subheading under "Firewall" or you may need to look for an advanced options tab to find it
4. Set it to forward
   * Add a new port forwarding rule
   * ***NOTE:** setting up port forwarding means that anyone using your public ip address + the port being forwarded will be thrust into your router bypassing any and all firewalls... You have been warned. I highly suggest clicking the check box to undo it but save the setting option when not in use.*
   * First, identify the port it is forwarding to- for this it is ***25566*** port
   * *Note: If you ever need to change this it is the "server-port" line in the `server.properties` file*
   * Name the port configuration whatever way you'd like
        * The "Orignal Port" and "Fwd to Port" are the same port number (in this case ***25566***)
        * The "Protocol" will be something along the lines of a 'both' or 'all' option
        * It should fill in the reccomended "Fwd to Addr"
        * I wouldn't mess with scheduling- just put it as always and manually turn it off when you don't want it to forward

* Make sure to share your public IP and port so users can access the server via `IP:PORT` eg. `198.162.0.1:25566`


