
# CREATION

aws cloudformation create-stack --stack-name cf-infra-aws-ecs-microservices-vpc-stack --template-body file://./vpc-stack.yml

aws cloudformation create-stack --stack-name cf-infra-aws-ecs-microservices-cluster-stack --template-body file://./cluster-stack.yml --capabilities CAPABILITY_NAMED_IAM \
--parameters ParameterKey=VPCStackName,ParameterValue=cf-infra-aws-ecs-microservices-vpc-stack



# UPDATES

aws cloudformation update-stack --stack-name cf-infra-aws-ecs-microservices-vpc-stack --template-body file://./vpc-stack.yml

aws cloudformation update-stack --stack-name cf-infra-aws-ecs-microservices-cluster-stack --template-body file://./cluster-stack.yml --capabilities CAPABILITY_NAMED_IAM \
--parameters ParameterKey=VPCStackName,ParameterValue=cf-infra-aws-ecs-microservices-vpc-stack



# DELETION


aws cloudformation delete-stack --stack-name cf-infra-aws-ecs-microservices-cluster-stack 

aws cloudformation delete-stack --stack-name cf-infra-aws-ecs-microservices-vpc-stack
