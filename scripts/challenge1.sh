az extension add -n ml
az ml data create --file ../experimentation/dataset.yml --workspace-name vlm_ml_example --resource-group vlm_x_002

#Create a compute cluster
#az ml compute create --name myCompute --size Standard_DS3_v2 --type aml-cluster --workspace-name vlm_ml_example --resource-group vlm_x_002

#Create a Job
az ml job create --file ../src/job.yml --workspace-name vlm_ml_example --resource-group vlm_x_002 
