cd ../infra
hostname=`./terraform output elb_hostname`
cd ../tests
echo "GET http://$hostname" > ../tests/targets.txt
echo "Starting vegeta attack against $hostname"
./vegeta attack -targets=targets.txt > results.bin
