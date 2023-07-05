# cloud-native-monitoring-app
- For this project I followed a youtube video so I could get in depth knowledge of the reasons behind the python code.
- I did face some challenges along the way & here is how I overcame them! 
- After running my eks.py script I ran the command "kubectl get pods -n default".
- my flask app would be stuck in a "ContainerCreating" State which signals an issue. 
- After some research it looked like this issue could be caused by numerous reasons. 
- I found a kubectl command I could use to see the container logs from the pod. "Kubectl get events -n kube-system"
- Using this I got the logs which read "MissingIAMPermissions pod/aws-node-889v6".
- I went into the IAM Role my node was using and gave it the policy "AmazonEKS_CNI_Policy"
- I deleted my kubernetes cluser & node, retried and got my container to a "running" state! :)
