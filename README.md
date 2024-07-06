# Moon-Active

This project is based on an open-source Node.js codebase, available at https://github.com/johnpapa/node-hello.
It includes the following components:

- Dockerfile: Used to create the Docker image
- Helm chart with deployment template
- Github Action: triggered from develop branch in every push with commit message that contains the string "run-ci". It builds new image versions and pushes to the ghcr registry. 
  The Package is then shown under the reposiroty Packages.
  The Helm step checks the chart, packages it and stores it in Github Packages - option for later automatic deployment (ArgoCD, Jenkins etc.)
- The repository has branch protection rules that prevent PR merges unless the CI actions have succeeded.

INSTRUCTIONS:
----
1. Prerequisites: Helm, kubectl, and Minikube installed locally.
2. Deployment Process (assuming CI has successfully completed and the new version has been merged into main):
    - Clone the repository locally and navigate into it
    - Start Minikube: `minikube start`
    - Install the Helm chart: `helm install ma-node-hello helm`
    - Optional: View Minikube's dashboard `minikube dashboard` to monitor the deployment through UI
    - Check pod status: `kubectl get pods -n default` - make sure pod is in running state
    - Optional: View pod logs: `kubectl logs <ma-node-hello pod name>`
    - Port forward to local instance: `kubectl port-forward pod/<ma-node-hello pod name> 3000:3000`
    - Access the application locally: visit http://localhost:3000/ :


      ![image](https://github.com/devopzvi/ma/assets/161055987/6ff36d20-a49f-43a6-a514-38c8ff3258f6)
