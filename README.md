## Oracle Openstack3.0 compute node on OVS3.4.2

This tool for compute node on OVS3.4.2 deployed by Oracle Openstack(OOstack)3.0
* requirement
  - Oracle Virtual Server 3.4.2 / Oracle Linux 7
  - Container of Compute node deployed by OOstack3.0


This tool modify below..
* adjust daemon appropriately
* network interface setting (eth0/eth1/etc2)
* linux bridge setting (br-ex/br-fw-admin/br-mgmt/br-storage/br-mesh)
* openstack kolla container (nova/neutron/openvswitch)

To use, 
1. copy 'hosts.example' to 'hosts' and edit the 'hosts' file.

2. modify variables in group_vars/all.


Then run the playbook like this:

    ansible-playbook -i hosts site.yml


To run a specific role:

    ansible-playbook -i hosts run_role.yml -e "ROLE=<role>" -e "TARGET=<hostname>"

    ex) ansible-playbook -i hosts   run_role.yml   -e "ROLE=docker-stop"  -e "TARGET=localhost"



This tool requires reboot after process.
You should verify applied configuration.

## verify daemon
    ToDisabled : openvswitch / ovs-agent 

   * Known issues : Make sure openvswitch status of local !!! 
   
   

## verify network
    ip a | grep -w inet
    brctl show

   * Known issues : Make sure nic status of p-ext-0 by 'brctl show'

## verify container
    docker ps -a
    docker exec openvswitch_vswtichd ovs-vsctl show
    docker logs nova_compute

## verify log
    cd /var/lib/docker/volumes/kolla_logs/_data

