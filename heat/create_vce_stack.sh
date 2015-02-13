StackName=$1
VMName="mdtnjv0vceb01"
ImageID="vce_vyatta-esx_3.2.1R3_2438"
FlavorID="m1.medium"
NetID1="VLAN-OAM-1312"
NetID2="dvspg-IPAG_vCE-01"
NetID3="dvspg-VCE_VPE-01"


heat -d -v stack-create -f ./create_vce_stack.yaml -P "ImageID=$ImageID;FlavorID=$FlavorID;NetID1=$NetID1;NetID2=$NetID2;NetID3=$NetID3;VMName=$VMName" $StackName
