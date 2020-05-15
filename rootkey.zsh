#AWSAccessKeyId=AKIAIMWHZAP55Y2LAODA
#AWSSecretKey=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

# Elastic Container Service
ecs-cli configure profile --profile-name ecs-adidas --access-key AKIAIMWHZAP55Y2LAODA --secret-key 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
ecs-cli configure --region us-east-1 --cluster adidas
ecs-cli up --keypair adidas --capability-iam --size 1 --instance-type t3.micro
ecs-cli compose up
ecs-cli ps

#docker machine for adidas-server adidas-solo

base=https://github.com/docker/machine/releases/download/v0.16.0 &&                                                           127 ↵ robertheler@roberts-mbp
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/usr/local/bin/docker-machine &&
  chmod +x /usr/local/bin/docker-machine

docker-machine version
docker-machine rm adidas-server
docker-machine create \
--driver amazonec2 \
--amazonec2-access-key AKIAIMWHZAP55Y2LAODA --amazonec2-secret-key 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 \
--amazonec2-region us-east-1 \
--amazonec2-open-port 3000 adidas-server
3.85.190.102
docker-machine env adidas-server
eval $(docker-machine env adidas-server)
docker-machine active
docker info

 logging:
      driver: awslogs
      options:
        awslogs-group: adidas
        awslogs-region: us-east-1
        awslogs-stream-prefix: proxy