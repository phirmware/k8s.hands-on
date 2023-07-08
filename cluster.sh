#! /bin/sh

export NAME=mycluster.k8s.local
export KOPS_STATE_STORE=s3://fleetman-course-hands-on
kops create cluster --zones us-east-1a,us-east-1b,us-east-1c --name ${NAME}
kops update cluster --name ${NAME} --state ${KOPS_STATE_STORE} --yes --admin 
