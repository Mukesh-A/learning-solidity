/// SPDX-License-Identifier: MIT 
pragma solidity ^0.8; 

//data types values and references
contract valuesType{
    bool boolTemp = true;
    // public i have not included in boolTemo so when i deploy i cant see the button

//unit can store 243
///if u dont mention 256 in uint it is ment to be 256 , we can also include uint8,uint16 etc
    uint public temp = 243;

//int can store 143 thats it
    int public temp2 = 144;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    bytes32 public b3;

}