# How to join tilde.one

1. Fork this repository

1. Clone the repository to your computer:
```bash
$ git clone git@tildegit.org:<your name>/setup.git
$ cd setup
```

1. Create an SSH key pair (press enter for all prompts to use defaults):
```bash
$ ssh-keygen -t ed25519
```

1. Add your public key to the authorized_keys file:
```bash
$ cat ~/.ssh/id_ed25519.pub >> .ssh/authorized_keys
```

1. Add, commit, and push your changes:
```bash
$ git add .ssh/authorized_keys
$ git commit -m "Added SSH keys for <your name>"
$ git push origin master
```

1. Open a pull request for your changes to merged into the project

Once the pull request is merged, you can login using:
```bash
$ ssh one@tilde.one
```
