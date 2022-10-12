# UserKit
## A rudimentary user account manager for FreeDOS
### Installation
Just place userkit.bat anywhere in your DOS environment's PATH.
You can add "userkit login" to the end of C:\FDAUTO.BAT to login upon bootup, but you must have created at least one regular user before doing this.
### Usage
Create a new user:
userkit adduser [username]

Remove a user:
userkit rmuser [username]

Login as a user:
userkit login

TODO:
* Add an "admin" command to approximate "system administrator" mode.
* User password management.
