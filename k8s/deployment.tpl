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
      app: webapp
  template:
    metadata:
      labels:
        app: webapp
    spec:
      containers:
        - name: webapp
          image: capstone/hello:${CIRCLE_SHA1}
          ports:
          - containerPort: 8000
