docker run -it --rm \
    -e SIMIANARMY_CLIENT_AWS_ACCOUNTKEY=$AWS_ACCESS_KEY_ID \
    -e SIMIANARMY_CLIENT_AWS_SECRETKEY=$AWS_SECRET_ACCESS_KEY \
    -e SIMIANARMY_CLIENT_AWS_REGION=$AWS_REGION \
    -e SIMIANARMY_CALENDAR_ISMONKEYTIME=true \
    -e SIMIANARMY_CHAOS_ASG_ENABLED=true \
    -e SIMIANARMY_CHAOS_ASGTAG_KEY=chaos_monkey \
    -e SIMIANARMY_CHAOS_ASGTAG_VALUE=true \
    -e SIMIANARMY_CHAOS_LEASHED=false \
    -e SIMIANARMY_CHAOS_ASG_PROBABILITY=100 \
    -e SIMIANARMY_CHAOS_ASG_MAXTERMINATIONSPERDAY=300.0 \
    -e SIMIANARMY_SCHEDULER_FREQUENCY=2 \
    -e SIMIANARMY_SCHEDULER_FREQUENCYUNIT=MINUTES \
    mlafeldt/simianarmy
