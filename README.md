# Java Maven Application with Jenkins CI/CD
This repository contains a sample Java Maven application used to demonstrate Jenkins CI/CD concepts, including pipeline development, shared libraries, job automation, and deployment workflows.

## To configure Jenkins to run a pipeline directly from a GitHub repository using a Jenkinsfile, follow these steps.
### Prerequisites
* Jenkins installed and running
* Git plugin installed
* Pipeline plugin installed
* Access to the GitHub repository
* A Jenkinsfile stored in the repository

### Step 1: Create a New Pipeline Job
1. Open Jenkins.
2. Click New Item.
3. Enter a job name.
4. Select Pipeline.
5. Click OK.

### Step 2: Configure Source Code Management
In the job configuration:
General
(Optional)
* Check GitHub project
* Enter your repository URL,
example:
https://github.com/username/java-maven-app


### Step 3: Configure Pipeline
Scroll to the Pipeline section.
Definition
Select:
Pipeline script from SCM

SCM
Select:
Git

Repository URL,
example:
https://github.com/FPurichaya/java-maven-app.git

For private repositories:
1. Click Add Credentials
2. Add:
    * GitHub Personal Access Token
    * Username/password
    * SSH key

Branch Specifier
Specify the branch to build.
Examples:
*/feature/ansible


Script Path
Specify the location of the Jenkinsfile.


### Step 4: Save and Build
Click: Save
Then: Build Now



