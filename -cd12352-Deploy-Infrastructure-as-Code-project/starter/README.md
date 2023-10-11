# CD12352 - Infrastructure as Code Project Solution
# [Mohamed ElBeltagy]

# Scripts:
Scripts:
    CREATE STACK:
    Network:
    % aws cloudformation create-stack --stack-name NetworkStack --template-body file://network.yml --parameters file://network-parameters.json --region=us-east-1
    Udagaram:
    % aws cloudformation create-stack --stack-name UdagramStack --template-body file://udagram.yml --parameters file://udagram-parameters.json --region=us-east-1 --capabilities CAPABILITY_NAMED_IAM

    UPDATE STACK:
    % aws cloudformation update-stack --stack-name UdagramStack --template-body file://udagram-updated.yml --parameters file://udagram-parameters-updated.json --region=us-east-1 --capabilities CAPABILITY_NAMED_IAM

    DELETE STACK:
    % aws cloudformation delete-stack --stack-name UdagramStack --region=us-east-1


# Applicatio Load Balancer endpoint: 
    http://udagr-webap-x49uvbdyywm3-570363500.us-east-1.elb.amazonaws.com/



