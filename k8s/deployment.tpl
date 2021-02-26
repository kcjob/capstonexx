apiVersion: apps/v1beta1
kind: Deployment
metadata:
  name: capstone
  namespace: capstone
spec:
  replicas: 1
  strategy:
    type: Recreate
  selector:
    matchLabels:
      app: webapp
  template:
    metadata:
      labels:
        app: webapp
    spec:
      containers:
      - image: joepub/hello:latest
        ports:
        - containerPort: 8000
          name: webapp
