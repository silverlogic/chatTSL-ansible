# Starting A New BaseApp Wordpress Application

All commands are in the context of the new app directory.

## First Things First / Development Setup

1. Generate an ssh key. `ssh-keygen -C ansible -f files/ssh/id_rsa`
2. Fix all the places that have `TODO`.

## Going Live!

1. Create a new vault file for the desired environment (staging or production).
   The key you create the vault with is a **SECRET**.  Each **project** will have
   one key for staging and one key for production.

   This vault file is where all sensitive information will be kept.  Anything we would
   not want shown in a public Github repo is considered sensitive.
   After running this you can edit the file as a regular YAML file.
   To see what information needs to be stored find all of the variables prefixed with `vault_`
   that are used throughout this application.  To edit the file after creating it
   run the same command, substituting edit for create.  Use the
   [roots salt generator](https://roots.io/salts.html) for creating the wordpress salts.

   ```
   ansible-vault create environments/<staging or production>/group_vars/all/vault.yml
   ```

2. Ensure the ssh public key located at `files/ssh/id_rsa.pub` has been added to
   the Wordpress repositorie's access keys.  This can be found in the Bitbucket settings
   for the repository.
