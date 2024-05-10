## Deployment on Kubernetes (AKS)

## Prerequisites

Azure Kubernetes Service (AKS) cluster created. You can follow the Azure [documentation](https://learn.microsoft.com/en-us/azure/aks/learn/quick-kubernetes-deploy-portal?tabs=azure-cli) to create an AKS cluster.
Or you can follow my [blogpost](https://helloabhii.hashnode.dev/creating-an-aks-cluster-in-azure) to create 
kubectl configured to connect to your AKS cluster

### Apply Kubernetes Manifests
Clone the GoWebApp repository to your local machine:
```bash
git clone -b kubernetes/DeployUsingK8s https://github.com/helloabhii/GoWebApp.git
cd GoWebApp
```

### Apply the Kubernetes manifests (YAML files) to deploy the GoWebApp:
```bash
kubectl apply -f kubernetes/DeployUsingK8s/go-deployment.yaml
kubectl apply -f kubernetes/DeployUsingK8s/go-service.yaml
```

### Access the Application
To access the GoWebApp, first retrieve the external IP address of the AKS cluster:
```bash 
kubectl get svc -w
```

Locate the external IP address of the gowebapp-service service. 
Once the external IP address is available, access the application in your web browser:
```bash
http://<external-ip>
```

## Contributing
Contributions are welcome! If you have any ideas, suggestions, or improvements, feel free to open an issue or submit a pull request.


