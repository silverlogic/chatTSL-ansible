# Starting A New Ansible Project

All commands are in the context of this repo.

## First Things First / Development Setup

1. Fix all the places that have `TODO` inside of `apps/000_shared`.  An example of finding all the TODO using `grep`: `grep -R TODO apps/000_shared`

## Going Live!

1. Create a new vault file for the desired environment (staging or production).
   The key you create the vault with is a **SECRET**.  Each **project** will have
   one key for staging and one key for production.

   This vault file is where all sensitive information will be kept.  Anything we would
   not want shown in a public Github repo is considered sensitive.
   After running this you can edit the file as a regular YAML file.
   To see what information needs to be stored find all of the variables prefixed with `vault_`
   that are used throughout this application.  To edit the file after creating it
   run the same command, substituting edit for create.

   ```
   ansible-vault create environments/<staging or production>/vault.yml
   ```
