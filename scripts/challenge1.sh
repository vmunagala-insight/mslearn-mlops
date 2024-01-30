rg="aml-rg"
wp="amlwp"
aml_cluster_name="aml-cluster"

az extension add -n ml
az ml data create --file dataset.yml --workspace-name $wp --resource-group $rg

#Create a compute cluster
az ml compute create --file amlcompute.yml --workspace-name $wp --resource-group $rg
#az ml compute create --name $aml_cluster_name --size Standard_DS3_v2 --type aml-cluster --workspace-name $wp --resource-group $rg

#Create a Job
az ml job create --file ../src/job.yml --workspace-name $wp --resource-group $rg 
