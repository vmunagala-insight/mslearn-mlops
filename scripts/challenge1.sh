resource_group="aml-rg"
aml_workspace_name="amlwp"
aml_cluster_name="aml-cluster"

az extension add -n ml
az ml data create --file dataset.yml --workspace-name $aml_workspace_name --resource-group $resource_group

#Create a compute cluster
az ml compute create --file amlcompute.yml --workspace-name $aml_workspace_name --resource-group $resource_group
#az ml compute create --name $aml_cluster_name --size Standard_DS3_v2 --type aml-cluster --workspace-name $aml_workspace_name --resource-group $resource_group

#Create a Job
az ml job create --file ../src/job.yml --workspace-name $aml_workspace_name --resource-group $resource_group
