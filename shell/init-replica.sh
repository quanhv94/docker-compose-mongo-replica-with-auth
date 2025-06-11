#!/bin/bash

echo ====================================================
echo ============= Initializing Replica Set =============
echo ====================================================

# echo "MongoDB started. Initiating Replica Set..."

# Connect to the MongoDB service and initiate the replica set
mongosh --host host.docker.internal:27017 -u root -p root --authenticationDatabase admin <<EOF
rs.initiate({
  _id: "rs0",
  members: [
    { _id: 0, host: "host.docker.internal:27017", priority: 2 },
    { _id: 1, host: "host.docker.internal:27018", priority: 1 },
    { _id: 2, host: "host.docker.internal:27019", priority: 1 }
  ]
})
EOF

echo ====================================================
echo ============= Replica Set initialized ==============
echo ====================================================
