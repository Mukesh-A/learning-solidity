/// SPDX-License-Identifier: MIT 
pragma solidity ^0.8; 

// GOBAL VARIABLES
// these are the spl variable which exist in global workspace and provide information about the Blockchain and transaction properties
contract globalVariable{
    address public myadd = msg.sender;
    uint public time = block.timestamp;
    uint public diff = block.difficulty;
    uint public gascost = tx.gasprice;
}


contract viewandPureFunction{
    uint public age=20;
    function viewFunc() public view returns(uint){
        
    }
}