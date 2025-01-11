# SSHAutomationScripts
Git clone to home folder only (for the purposes of the tiny automation script in this README).
You can execute these any time you need to add keys to a remote server in a secure manner with haste.
This tiny Bash script will copy the scripts to the ~/.ssh folder from the cloned folder, then removes the clone folder afterwards.

```cp ~/SSHAutomationScripts/sshkeygenerator.sh ~/.ssh/; cp ~/SSHAutomationScripts/addkeytoserver.sh ~/.ssh/; sudo rm -r ~/SSHAutomationScripts```
