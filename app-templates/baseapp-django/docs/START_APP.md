# Starting A New BaseApp Django Application

All commands are in the context of the new app directory.

## First Things First / Development Setup

1. Generate an ssh key. `ssh-keygen -C ansible -f files/ssh/id_rsa`
2. Fix all the places that have `TODO`.
    - For the Vagrantfile IP addresses choose a [Private Network](https://en.wikipedia.org/wiki/Private_network).
      Try to ensure the entire project (not just this app) uses the same subnet and that no other projects are already
      using the same subnet.  For example if I chose `192.168.12.0/24` the vagrant IPs might look like

      ```
      db_ip: '192.168.12.11',
      amqp_ip: '192.168.12.12',
      web_ip: '192.168.12.13'
      ```

## Going Live!

1. Create all of the dependant services that are references in variables.  For a guide
   on creating the services see the [SERVICES.md](SERVICES.md) docs.
2. Create a new vault file for the desired environment (staging or production).
   The key you create the vault with is a **SECRET**.  Each **project** will have
   one key for staging and one key for production.

   This vault file is where all sensitive information will be kept.  Anything we would
   not want shown in a public Github repo is considered sensitive.
   After running this you can edit the file as a regular YAML file.
   To see what information needs to be stored find all of the variables prefixed with `vault_`
   that are used throughout this application.  To edit the file after creating it
   run the same command, substituting edit for create.

   ```
   ansible-vault create environments/<staging or production>/group_vars/all/vault.yml
   ```

3. Ensure the ssh public key located at `files/ssh/id_rsa.pub` has been added to
   the Django repositorie's access keys.  This can be found in the Bitbucket settings
   for the repository.
