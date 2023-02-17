# 7zPasswords

[Hashcat](https://hashcat.net/hashcat/) is capable of reading passwords from compressed archives such as 7z and zip. This repository contains a list of 7z compressed passwords from [https://github.com/danielmiessler/SecLists](https://github.com/danielmiessler/SecLists). It's useful if you use a cloud based cracking rig and need to save storage space on the instance. 


## Usage

All the compressed passwords are in the Passwords directory. Follow these steps if you want to rebuild them: 

1. Make sure 7z is installed. 
1. Clone the [https://github.com/danielmiessler/SecLists/](https://github.com/danielmiessler/SecLists/) repository.
1. Run `build.sh` and pass it the location of the Passwords directory in your SecLists cloned repository.
1. Profit. 
