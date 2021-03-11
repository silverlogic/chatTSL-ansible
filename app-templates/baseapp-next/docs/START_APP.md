# Starting A New BaseApp React Application

All commands are in the context of the new app directory.

## First Things First / Development Setup

1. Generate an ssh key. `ssh-keygen -C ansible -f files/ssh/id_rsa`
2. Fix all the places that have `TODO`.

## Going Live!

1. Ensure the ssh public key located at `files/ssh/id_rsa.pub` has been added to
   the React repositorie's access keys.  This can be found in the Bitbucket settings
   for the repository.
