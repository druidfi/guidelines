# Security updates

Here are some general guidelines for Drupal security updates.

### Always check with the project manager if customer is ok to proceed with the update.

### Checking if automated PR exists

Check if any automated pull requests have been made in the repository. If there is already an automated pull request, check the branch and see everything works before merging.

### If no automated PR exists

Create a branch for the update as usual according to the instructions below.

### Checking Drupal release notes

##### If no automated pull requests have been made, check the Drupal security updates:

https://www.drupal.org/project/drupal/releases


Check the correct Drupal version release notes, check what has been updated and proceed according to instructions.

### When you need to update to the latest patch version of core with composer

This happens when you for example need to update the core from version 9.4.10 to 9.4.12

When updating to the latest current version, we need to handle 3 different packages:
 - drupal/core-recommended 
 - drupal/core-composer-scaffold 
 - drupal/core-dev-pinned

Example below is for an update to Drupal version 9.4.

````shell
composer update -W "drupal/core-*" 
--with=drupal/core-recommended:~9.4.0 
--with=drupal/core-composer-scaffold:~9.4.0 
--with=drupal/core-dev-pinned:~9.4.0
````

### Patches

Sometimes the project may include patches which are already fixing the same issue or on the same lines as the current update.
In this case it is worth checking:
1) Is the patch still needed after the update? 
2) Check the issue queue for the project.

### Deployment

- It is important the process does not end in staging.
- Make sure timing of the deployment is agreed with the client
- Make sure that the update is being tested in development (if possible) before 

#### Production releases 

Once the security update has been made, it can either be merged directly from the update branch or from dev branch. 
Preferably releases go through via development/staging branch.

### Creation of release notes from staging to production

- Draft a Pull Request from dev to main.
- Name the release with the date of the release. i.e. 'Release 20.3.2023'
- Include a bullet point list of the PRs which are included in the release in the format '#PR number'. 
- Please note you may need to cherry-pick the once you want to include.
- Include labels (for example Drupal core and security).


