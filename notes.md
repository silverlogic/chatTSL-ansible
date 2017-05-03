- deployment / setup docs
- apidocs config
- application specific roles???
+ load balancer vs not
+ dev environment - vagrant
+ vagrant virtualbox groups

# BaseApp

# What is it?

* A structure
* A collection of roles
* Code generation tools
    - Create a new app

# Starting a new project

1. Create a project ssh key
2. Define project variables
3. Create a project vault for staging and production
    - Each environment has a different vault password.

# Variable precednce

1. shared cross env
2. shared env specific
3. app cross env
4. app env specific

# Starting a new app

1. Generate a new app
2. Create an app vault for staging and production

# Start a new baseapp django app

1. copy structure
2. create ssh key
3. create services accounts
    - AWS
    - sendgrid
    - new relic
    - loggly
    - sentry
    - branch.io

# Services

## E-Mail

* Use sendgrid account. Each project gets it's own account
* Use API key credentials. Each environment gets it's own API key.

## Server Monitoring

* Use new relic
* Each project gets it's own sub account under the TSL account.  Use the sub account license key.

## Log Aggregation

* Use loggly
* All projects share the same customer token.

## Error Logging

* Use sentry
* Each project has it's own team.
* Each app has 2 sentry projects: one for staging and one for production.

## Deep Links / Link Tracking

* Use branch.io
* Each project has it's own branch.io application
* staging uses test environment, production uses live environment
