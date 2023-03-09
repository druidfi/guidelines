# SSH keygen

## Creating the SSH key

In the folder where keys are stored run:
```
ssh-keygen
```
It will ask you to enter file in which to save the key. SSH keys for user authentication are usually stored in the user's .ssh directory under the home directory.
Then it asks to enter a passphrase which you can leave empty and press enter.
More info: https://www.ssh.com/academy/ssh/keygen.

## Adding the key to a project

Go to the folder where you saved the key and open id_rsa.pub file.
Copy the key in the file (including the text ssh-rsa).

Add the key to Wodby or Lagoon server. If you don't have the access, ask your project manager.

To add the key to a specific project, go to the project's root directory and run:
```
make -C ~/stonehenge addkey; ssh-add
```

## Notice

**You may have to add key every time you open the terminal.**
