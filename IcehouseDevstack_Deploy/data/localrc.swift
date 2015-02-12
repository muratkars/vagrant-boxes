# Minimal Content
# ---------------

ADMIN_PASSWORD=nova
MYSQL_PASSWORD=stack
RABBIT_PASSWORD=stack
SERVICE_PASSWORD=$ADMIN_PASSWORD
SERVICE_TOKEN=$ADMIN_PASSWORD

# Neutron
# -------
disable_service n-net
enable_service neutron
enable_service q-svc
enable_service q-agt
enable_service q-dhcp
enable_service q-l3
enable_service q-meta
enable_service q-lbaas

# Branches
NOVA_BRANCH=stable/havana
CINDER_BRANCH=stable/havana
GLANCE_BRANCH=stable/havana
HORIZON_BRANCH=stable/havana
KEYSTONE_BRANCH=stable/havana
NEUTRON_BRANCH=stable/havana
SWIFT_BRANCH=stable/havana
 
# Output
LOGFILE=/opt/stack/logs/stack.sh.log
VERBOSE=True
#LOG_COLOR=False
SCREEN_LOGDIR=/opt/stack/logs


OVS_ENABLE_TUNNELING=False
# Bug https://bugs.launchpad.net/neutron/+bug/1112912
LIBVIRT_FIREWALL_DRIVER=nova.virt.firewall.NoopFirewallDriver

# Heat and Ceilometer
#enable_service heat
#enable_service h-api
#enable_service h-api-cfg
#enable_service h-api-cw
#enable_service h-eng
#enable_service ceilomete-api
#enable_service ceilometer-acompute
#enable_service ceilometer-acentral
#enable_service ceilometer-collector
#enable_service ceilometer-alarm-notifier
#enable_service ceilometer-alarm-singleton

# Swift
# -----
enable_service s-proxy s-object s-container s-account
#enable_service n-obj
disable_service n-obj
SWIFT_REPLICAS=1
SWIFT_HASH=nova

# Keystone
# --------
KEYSTONE_CATALOG_BACKEND=sql

# Cinder
# ------
VOLUME_BACKING_FILE_SIZE=2560M

# Do not modify below if you don't know what you are doing
HOST_IP_IFACE=eth1
# OFFLINE=True
disable_service tempest
disable_service ec2
APACHE_ENABLED_SERVICES+=keystone,swift
#APACHE_ENABLED_SERVICES+=keystone

