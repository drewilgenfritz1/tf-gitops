
# deploy kind cluster
kind create cluster -v 6
# install flux
flux install
# deploy tf-controller
# https://weaveworks.github.io/tf-controller/getting_started/

tfctl install

# export aws credentials to env
# create secret for aws credentials
kubectl create secret generic awscreds -n flux-system --from-literal=access_key=$AWS_ACCESS_KEY_ID --from-literal=secret_key=$AWS_SECRET_ACCESS_KEY --from-literal=session_token=$AWS_SESSION_TOKEN

# apply gitrepository and terraform definitions

kubectl apply -f <path-to-tf-pachage-source>

# Wait here for your terraform to deploy fully

# deploy script to copy outputs to params file

# deploy management cluster

switch contexts to management cluster

flux install

tfctl install

kubectl get secret -n flux-system tfstate-default-tf-packages --context kind-kind -o yaml | kubectl apply --context aws-management-1-admin@aws-management-1 -f -

kubectl get secret -n flux-system awscreds --context kind-kind -o yaml | kubectl apply --context aws-management-1-admin@aws-management-1 -f -

kind delete cluster --name <cluster-name>

# apply package source file in management cluster



