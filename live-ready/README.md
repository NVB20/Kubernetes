follow the steps and explanations on the Kubernetes docs:
https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/

note that after apply of the pod it will be healthy for the first 10 seconds than crash and restart because of the deafult code in the /server server.go file
