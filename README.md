# JenkinsBashScripts

This project contains 3 scripts used to **install** the setup for jenkins with a local connection **update** which updates jenkins and **delete** jenkins. 

### How to use
You will need to have a linux machine to run the scripts. The scripts are name accordingly, so simply run the install script to install jenkins. The update script can be run if you desire to ensure it's up-to-date. Finnaly the delete script which simply deletes everything that was previously installed.

### How it works
#### Install
The install script installs JDK version 8 as it's required for running jenkins. It will create a user to have the correct permission and seperate it from the current user. Jenkins will then be ran and enabled to run on start up.

#### Update
Removes the previous war file that was installed, then installs the latest version of the jenkins war file.

#### Delete
Stops jenkins from running disables it from rrunning at boot, then deletes all installed files and directories finally deleting the created user.
