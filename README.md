# Kill-GOING11
Kill MacOS input application GOING11 automatically for preventing memory leak / 自動重啟自然輸入法並釋出佔用記憶體

# GOING 11
The MacOS input application has lots of memory leak in the recent version. However, after contacting the company, they didn't have the future plan for fixing this problem..
So I made a auto killer of it.

https://www.goingpro.me

![img](https://res.cloudinary.com/hrscywv4p/image/upload/c_limit,fl_lossy,h_900,w_400,f_auto,q_auto/v1/1051929/20180115sp_bvmlaz.jpg)

## REQUIREMENT 
### PIDOF
I've includ the pidof binary on this project. However, you can install 'pidof' command yourself by homebrew.
``` brew install pidof ```
And copy it from the installation path to /usr/bin

## Installation
- Download whole project
- Move to the project folder by 'cd' command
```$ cd $Project-directory-path```
- Install by install.sh script
``` ./install.sh ```

It will schedule the script for checking the memory occupied of GOING11 process hourly.
If memor leak over 400 MB, it will kill and restart the GOING11 process automatically.
