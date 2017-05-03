# Services

In general all service accounts are specific to a single project.  Exceptions to this rule will be noted.

*TSL Address*

751 Park of Commerce Dr
Suite 126
Boca Raton, FL 33487
United States

## AWS

Each project will have its own AWS account.  If the client does not have their own already we
create one with the following credentials:

* Email Address: `dev+<project_code_name>@tsl.io`
* Address: If the client has a business address use that. If not use the TSL address listed above.
* Credit Card: If the client has a card use that, if not use the TSL card.
* Phone verification: Use your own phone for this. It isn't used beyond verification.

### IAM

Each environment has its own IAM user.  This user is needed to access the S3 bucket.  How to:

1. Create IAM user with name `api-<environment>`.  Keep track of their access key id and secret access key
   or they will need to be recreated.
2. Add a custom inline policy to give the new user access to the related s3 bucket:

   ```
   {
       "Version": "2012-10-17",
           "Statement": [
           {
               "Effect": "Allow",
               "Action": [
                   "s3:*"
               ],
               "Resource": [
                   "arn:aws:s3:::<project_full_name>-api-<environment>",
                   "arn:aws:s3:::<project_full_name>-api-<environment>/*"
               ]
           }
       ]
   }
   ```

### S3

Each environment has its own S3 bucket for storing static files and media files.  How to:

The steps to having a fully functional s3 bucket are:

1. create the bucket(s) with name `<project_full_name>-api-<environment>`
2. add CORS configuration. The default configuration in the wizard is fine.

## Branch.io

Each project has its own Branch.io application for performing deep linking and link tracking.  How to:

1. Create a branch.io account using your @tsl.io email.
2. Create a new branch.io application and invite your team lead to the branch.io team.

The staging and development environments use the test branch.io credentials.  The production environment
uses the live branch.io credentials.

## Loggly

Each project uses the global TSL loggly account.  Ask your team lead for the loggly customer token.

## New Relic

Each project uses the global TSL New Relic account.  In that account a sub account is created for the project.
Sub accounts can be created and managed from Account Settings tab on New Relic.  The New Relic license key can
be retrieved from the sub account.

## Rundeck (ops.tsl.io)

Each project uses the global TSL rundeck server for automating deployments.  The rundeck
job templates for this app can be found in the `rundeck` directory.

1. Create a new rundeck project if one does not exist named `<project_full_name>`
2. Create a new key storage entry for the ansible vault password. One for each live environment.
    * clients/<project_name>/ansible-vault-staging
    * clients/<project_name>/ansible-vault-production
3. Upload a rundeck job for each environment for:
    * deploy `<app_name>`
    * deploy `<app_name>` api docs

## Sendgrid

Each project has it's own sendgrid account for sending emails.

1. Create a new sendgrid account
    * username `<project_full_name>`
    * email `dev+<project_code_name>@tsl.io`
2. Fill in the sendgrid profile info
    * Use as many client details as possible.  If we don't have client details for one of the
      fields use TSL details.
3. Disable click tracking.  It causes branch.io to not work
    * Settings -> Tracking
4. Create an API key for each app environment.
    * Settings -> API keys
    * Name `<app_name> <environment>`
    * Restricted Access permssions
    * Allow only Mail Send

## Sentry

Each project has it's own team on the [TSL sentry instance](https://tsl.io).  Each app gets one project in that
team for each live environment (staging, production).

1. Create a new team named `<project_verbose_name>`
2. Create a new project in that team named `<app_name> (<environment>)`

## Code Cov

Each app has it's code coverage tracked using [codecov.io](codecov.io)

1. Login to codecov using your bitbucket account
2. Enable the app repository
3. Use the new codecov token in the corresponding Django repo build.
