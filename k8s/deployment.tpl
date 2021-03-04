apiVersion: apps/v1 #beta1
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
      app: capstone
  template:
    metadata:
      labels:
        app: capstone
    spec:
      containers:
        - name: capstone
          image: 067015178777.dkr.ecr.us-east-1.amazonaws.com/capstone:latest
          ports:
          - containerPort: 8000
