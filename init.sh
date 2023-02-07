#kind create cluster --name airflow-cluster --config kind-cluster.yaml 
#kubectl create namespace opendata
#kubectl apply -f opendata-storage.yaml -n opendata
kubectl create secret generic mysql-secrets --from-literal=openmetadata-mysql-password=openmetadata_password -n opendata
kubectl create secret generic airflow-secrets --from-literal=openmetadata-airflow-password=admin -n opendata
kubectl create secret generic airflow-mysql-secrets --from-literal=airflow-mysql-password=airflow_pass -n opendata
#helm upgrade -i openmetadata open-metadata/openmetadata --values values.yaml -n opendata
#helm upgrade -i openmetadata-dependencies open-metadata/openmetadata-dependencies --values values-dependencies.yaml -n opendata
