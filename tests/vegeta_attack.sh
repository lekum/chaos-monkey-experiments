terraform_folder="../../infra"
pushd $terraform_folder
hostname=`terraform output elb_hostname`
popd
echo "GET http://$hostname" > ../tests/targets.txt
echo "Starting vegeta attack against $hostname"
vegeta attack -targets=targets.txt > results.bin
