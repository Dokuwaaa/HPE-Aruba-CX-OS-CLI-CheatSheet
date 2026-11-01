# Category: Host name Change

6200#
6200#configure terminal #shorthand: config
6200(config)#hostname [$hostname]
hostname(config)#

# Category: VLAN Creation

hostname(config)#vlan [$vlan_id]
hostname(config-vlan)#name [$vlan_name]
hostname(config-vlan)#exit #shorthand: ex
hostname(config)#interface [$vlan_id]
hostname(config-if)#ip address [$ip_address] [$subnet_mask]
# example : 192.168.10.2 255.255.255.0 or 192.168.10.2/24

# Category Assign VLAN to interface

hostname(config)# interface [$interface_id]
# Shorthand: int 1/1/1
hostname(config-if)# vlan access [$vlan_id]
# What it does: Sets this port for a single regular device (like a PC or printer) and automatically puts all its traffic into one specific network group.
hostname(config-if)# vlan trunk allowed [$vlan_id]
# What it does: Turns this port into a highway between network devices and lets only the specified network groups travel across it, blocking all unlisted groups.
hostname(config-if)# vlan trunk native [$vlan_id]
# What it does: Sets a default network group for any plain, unlabeled traffic passing through this highway link so it doesn't get lost or dropped.

# Category : IP Routing
hostname(config)#ip route [$destination_network] [$subnet_mask] [$next_hop_ip_address]
# sends a specific network group to a specific destination example : ip route 192.168.10.0 255.255.255.0 192.168.10.1
hostname(config)#ip route [$destination_network] [$subnet_mask] [$next_hop_ip_address]
# sends all traffic to the nexthop address: ip route 0.0.0.0 0.0.0.0 192.168.10.1

# Category : Enable SSH, Create [User and Password], and Save Configuration
hostname(config)#ssh server vrf mgmt
   # This will enable the SSH server on the appliance, allowing you to remotely access and manage it using SSH.
hostname(config)#username [$username] group [$group] password plaintext [$password]
# [Plaintext | Ciphertext]
   # This will create a new user account on the appliance with the specified username, group, and password. The password is stored in plaintext format.

# Category : Useful Commands

6200(config)#do
   # [This will allow you to run commands without leaving the configuration mode]
6200(config)#no
   # [This will allow you to remove or disable a configuration setting]
6200(config)#exit #shorthand: ex
   # [This will take you back one level in the configuration mode]
6200(config)#end #shorthand: en
   # [This will take you back to the main command prompt]
6200(config)#write memory #shorthand: write mem | wr mem
   # [This will save the configuration changes you just made to the appliance]
6200(config)#show running-config #shorthand: show run
   # [This will display the current configuration settings of the appliance]
6200(config)#show brief interfaces
   # [This will display a summary of all the interfaces on the appliance, including their status and configuration]
6200(config)#show vlan
   # [This will display the current VLAN configuration of the appliance]
6200(config)#show vlan brief
   # [This will display a summary of the VLAN configuration of the appliance]
6200(config-if)shutdown #shorthand: shut
   # [This will disable the interface, preventing any traffic from passing through it]
6200(config-if)#spanning-tree portfast
   # [This will enable PortFast on the interface, which allows it to transition to the forwarding state immediately, bypassing the listening and learning states]
6200(config-if)#power-over-ethernet priorty [$priority_level]
# [Critical | High | Medium | Low]
   # [This will set the priority level for Power over Ethernet (PoE) on the interface, which determines how much power is allocated to connected devices]