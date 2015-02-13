stack_name=$1
ipag_name="david-ipag"
vpe_name="david-vpe"
network_type="vlan"
ipag_physical_network="dvspg-eb4324507b9b79d5-8aaad6680a682c30"
vpe_physical_network="dvspg-eb4324507b9b79d5-8aaad6680a682c30"
ipag_segments="2107"
vpe_segments="3107"

heat -d -v stack-update -f ./multiprovider_net_stack_vpe_vce.yaml -P "ipag_name=$ipag_name;vpe_name=$vpe_name;network_type=$network_type;"\
"ipag_physical_network=$ipag_physical_network;vpe_physical_network=$vpe_physical_network;ipag_segments="\
"$ipag_segments;vpe_segments=$vpe_segments" $stack_name

