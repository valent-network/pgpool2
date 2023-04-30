envsubst < pcp.conf.template > /etc/pgpool2/pcp.conf
envsubst < pgpool.conf.template > /etc/pgpool2/pgpool.conf
envsubst < pool_hba.conf.template > /etc/pgpool2/pool_hba.conf
envsubst < pool_passwd.template > /etc/pgpool2/pool_passwd

pgpool -n