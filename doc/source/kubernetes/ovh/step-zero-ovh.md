(ovh)=

# Kubernetes on [OVHcloud](<https://ovh.com/>) (OVH)

[OVHcloud](<https://ovh.com/>) is a leader in the hosted private cloud services space in Europe.

They offer a managed Kubernetes service as well as a managed private registry for Docker images.

This page describes how to create a Kubernetes cluster using the OVH Control Panel,
and how to access the cluster using the command line with `kubectl`.

1. Log in to the [OVH Control Panel](<https://www.ovh.com/auth/>).

   ```{note}
   You first need to create an OVH account if you don't have one already.
   ```
2. Click on the **Public Cloud** tab in the navigation bar.
3. If you don't have an OVH Stack, you can create one by clicking on the following button:
4. Select a name for the project
5. If you don't have a payment method yet, select one and click on "Create my project":
6. Using the **Public Cloud interface**, click on **Managed Kubernetes Service** and
   then **Create a Kubernetes cluster**:
7. Select a **Location**, **1.15** as the Kubernetes version and a **name** for the cluster:
8. Click on **Send**
9. Once the cluster is ready, click on **Nodes** to add 2 nodes:

   You can start with the **b2-7** flavor, or choosing a different flavor based
   on your requirements.
10. Download the `kubeconfig` file and store it under `~/.kube/config` on your machine.

   ```{image} ../../_static/images/ovh/kubeconfig.png
   :alt: Download the kubeconfig
   ```
11. To test if your cluster is initialized, run:

   ```
   kubectl get node
   ```

   The response should list two running nodes (or however many nodes you
   set with `--num-nodes` above).

   ```{note}
   Check out the [Kubernetes Documentation](<https://kubernetes.io/docs/tasks/tools/install-kubectl>)
   to install `kubectl`.
   ```

Congrats! Now that you have your Kubernetes cluster running, it's time to
begin {ref}`creating-your-jupyterhub`.