

#### 차후 ansible 내 포함할 대상작업


#docker exec openvswitch_vswitchd ovs-vsctl show
#docker exec openvswitch_vswitchd ovs-vsctl del-br  br-ex   <-- 불필요한 bridge삭제
#docker exec openvswitch_vswitchd ovs-vsctl add-br  br-floating
#docker exec openvswitch_vswitchd ovs-vsctl add-port br-floating  phy-by-floating
#docker exec openvswitch_vswitchd ovs-vsctl set interface  phy-by-floating  type=patch options:peer=int-br-floating
#docker exec openvswitch_vswitchd ovs-vsctl add-port br-floating  p-ext-0
#docker exec openvswitch_vswitchd ovs-vsctl set interface  p-ext-0  type=internal

ovs-vsctl show
ovs-vsctl del-br  br-ex 
ovs-vsctl add-br  br-floating
ovs-vsctl add-port br-floating  phy-by-floating
ovs-vsctl set interface  phy-by-floating  type=patch options:peer=int-br-floating
ovs-vsctl add-port br-floating  p-ext-0
ovs-vsctl set interface  p-ext-0  type=internal
