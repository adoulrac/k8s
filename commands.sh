Basics:
Get Information:

kubectl cluster-info: Display cluster info.
kubectl get nodes: Show all nodes in the cluster.
kubectl get pods --all-namespaces: List all pods in all namespaces.
Namespace Operations:

kubectl get namespaces: List all namespaces.
kubectl create namespace <namespace>: Create a new namespace.
kubectl delete namespace <namespace>: Delete a namespace.

Pod Operations:

kubectl get pods: List all pods in the current namespace.
kubectl describe pod <pod-name>: Show details about a pod.
kubectl logs <pod-name>: Display logs for a pod.
kubectl exec -it <pod-name> -- /bin/bash: Open a shell in a running pod.
kubectl exec -ti <pod-name> -- cat /etc/resolv.conf

Deployment Operations:

kubectl get deployments: List all deployments in the current namespace.
kubectl describe deployment <deployment-name>: Show details about a deployment.
kubectl scale deployment <deployment-name> --replicas=<num>: Scale a deployment.

Service Operations:

kubectl get services: List all services in the current namespace.
kubectl describe service <service-name>: Show details about a service.
Configuration:

Contexts:

kubectl config get-contexts: List available contexts.
kubectl config use-context <context>: Switch to a different context.

Credentials:

kubectl config view: Display the current kubeconfig settings.
kubectl config set-credentials <name> --token=<token>: Set user credentials.
Advanced:

Port Forwarding:

kubectl port-forward <pod-name> <local-port>:<remote-port>: Forward ports to a pod.

Resource Definitions:

kubectl get <resource>: List resources (e.g., deployments, pods, services).
kubectl explain <resource>: Show the resource fields and their types.

Deleting Resources:

kubectl delete <resource> <name>: Delete a resource by name.

Apply Configurations:

kubectl apply -f <filename.yaml>: Apply a configuration file.

Rolling Updates/Rollbacks:

kubectl set image deployment/<deployment-name> <container-name>=<new-image>: Update an image.
kubectl rollout status deployment/<deployment-name>: Monitor the rollout status.
kubectl rollout history deployment/<deployment-name>: View rollout history.
kubectl rollout undo deployment/<deployment-name>: Rollback to the previous deployment.

Configuration and Context:
Switching Contexts:

kubectl config use-context <context>: Switch to a specific context.

Setting Default Namespace:

kubectl config set-context --current --namespace=<namespace>: Set the default namespace for the current context.

Inspection and Troubleshooting:
Resource Status:

kubectl get events: Display cluster events.
kubectl top nodes: Show resource usage (CPU/Memory) for nodes.
kubectl top pods: Display resource usage for pods.

kubectl logs <pod-name>
kubectl logs <pod-name> -c <container-name>
kubectl logs <pod-name> -n <namespace> <pod-name>
Log into the node and run:
crictl --runtime-endpoint unix:///run/containerd.sock logs <container-id>
tail /var/log/containers/<container-name_container-id>

API Resources:

kubectl api-resources: List all available API resources.
kubectl api-versions: List all available API versions.

Network Troubleshooting:

kubectl get svc --all-namespaces: List services in all namespaces.
kubectl get endpoints <service-name>: Display endpoints for a service.
kubectl run <pod-name> --image=busybox --rm -it --restart=Never -- sh: Start a temporary pod for debugging.

Secrets and ConfigMaps:
Secrets:

kubectl create secret generic <secret-name> --from-literal=key1=value1 --from-literal=key2=value2: Create a secret.
kubectl get secrets: List all secrets in the current namespace.

ConfigMaps:

kubectl create configmap <configmap-name> --from-file=path/to/files: Create a ConfigMap from files.
kubectl get configmaps: List all ConfigMaps in the current namespace.

Labels and Annotations:
Labeling Resources:

kubectl label <resource-type> <resource-name> <key>=<value>: Add a label to a resource.

Annotations:

kubectl annotate <resource-type> <resource-name> key1=value1 key2=value2: Add an annotation to a resource.

Cluster Management:
Node Operations:

kubectl drain <node-name>: Mark a node as unschedulable and evict pods.
kubectl uncordon <node-name>: Make a node schedulable again.

Cluster Upgrades:

kubectl get nodes: Check the current version of each node.
kubectl version: Display the Kubernetes version.

CRDs (Custom Resource Definitions):

kubectl get crd: List all Custom Resource Definitions.
kubectl get <custom-resource>: List instances of a Custom Resource.

Advanced Troubleshooting:
Debugging Running Pods:

kubectl debug <pod-name> --image=<debug-image>: Start a debugging container in a running pod.

Resource Validation:

kubectl apply --dry-run=client -f <filename.yaml>: Dry-run to validate the configuration without applying it.

kubectl get deployments --show-labels
kubectl get pods --show-labels
kubectl get services --show-labels
