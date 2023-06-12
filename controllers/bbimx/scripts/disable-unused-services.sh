#!/bin/sh

# An array of services to disable
services=("rng-tools" "rpcbind" "mountnfs.sh" "nfscommon" "atd" "nfsserver" "crond")

# Loop over each service
for service in "${services[@]}"; do
    echo "Disabling $service..."
    update-rc.d $service disable
done

echo "All specified services have been disabled."

