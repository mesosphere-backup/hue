This is an integration of Hue onto the Mesosphere DCOS.

It works by creating a docker of Hue, along with Httpfs (which is required for HA installations of HDFS such as the DCOS version).
Then, it deploys via Marathon by mounting certain DCOS volumes and copying hadoop configs to httpfs.

# How to use:
When you first launch Hue, it will ask you to log in. Please use the root account ("root" and any password) because that will become your admin account.
