# Security updates

Here are some general guidelines for Drupal security updates.

### Checking if automated PR exists

Check if any automated pull requests have been made in the repository. If there is already an automated pull request, check the branch and see everything works before merging.

### Checking Drupal release notes

##### If no automated pull requests have been made, check the Drupal security updates:

https://www.drupal.org/project/drupal/releases

Check the correct Drupal version release notes and proceed according to instructions.

### Patches

Sometimes the project may include patches which are already fixing the same issue or on the same lines as the current update.
In this case it is worth checking:
1) Is the patch still needed after the update? 
2) Check the issue queue for Drupal.

### Production releases 

Once the security update has been made, it can either be merged directly from the update branch or from dev branch. Preferably releases go through via development/staging branch.
