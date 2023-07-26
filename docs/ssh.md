# SSH

## Creating SSH keys

Open the folder where keys are stored (probably a folder `Users/{your-user-name}/.ssh`) in terminal and run command:
```
ssh-keygen
```
It will ask you to enter file in which to save the key, here you can rename the file if you want. SSH keys for user authentication are usually stored in the user's .ssh directory under the home directory.
Then it asks to enter a passphrase which you can leave empty and press enter.
More info: https://www.ssh.com/academy/ssh/keygen.

## Using SSH keygen

Go to the folder where you saved the key and open the newly created pub file (default id_rsa.pub).
Copy the key in the file (including the text ssh-rsa).

Add the key to Wodby or Lagoon server. If you don't have the access, ask your project manager.

To add the key to a specific project, go to the project's root directory and run:
```
make -C ~/stonehenge addkey; ssh-add
```

### Notice

**You may have to add key every time you open the terminal.**

## How to use ssh keys in different places: wodby, lagoon, github, custom server

## Usual problem situations
