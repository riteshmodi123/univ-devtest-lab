# univ-devtest-lab
   Sample solution to demonstrate how Azure Dev Test Lab can be provisioned by university staff, with precreated templates for each semister/ semister courses

## Overview
* The Templates folder should have semester wise templates provisioning the lab material for each course in that semester. Currently only a BE-Sem5 sample template has been added.
* The DTL-Deployment folder has scripts which provisions a Dev Test Lab, Configured with The Template repository. That is once the Dev Test Lab is provisioned users will be able to create VMs containing their course where by selecting the appropriate template

## Steps to Provision the Dev Test Lab
  * Fork this repo
  * Clone your fork locally
  * Generate Github PAT (read access) token
  * create azuredeploy.parameters.withtoken.json which is a copy of azuredeploy.parameters.json with the following changes
    * https://github.com/maniSbindra/univ-devtest-lab.git needs to be replaced by your github fork repository uri
    * PAT token from your github repository needs to be replaced. in this file
  * execute the script below (This assumes Azure CLI 2 has been installed)

    
    ```sh

    # cd into the DTL-Deployment folder
    cd DTL-Deployment

    # create resource group if not already existing
    az group create -n dtlWithTemplateRepo -l westus

    # deploy devtestlab with template repository 
    az group deployment create -n dtldep1 -g dtlWithTemplateRepo --template-file azuredeploy.json --parameters @azuredeploy.parameters.withtoken.json
    ```

     
     