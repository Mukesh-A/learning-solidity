/// SPDX-License-Identifier: MIT 
pragma solidity ^0.8; //^ means we can use any version above than current mentioned

//Their can be multiple contact
contract ownablee{
    address public owner;
    //public is like getter function where we can able to read the addesss
    constructor(){
        owner = msg.sender;
        //msg.sender is The person who is deploying the contract his address will be stored in owner var
        // sender is a global variable
    }
    modifier onlyOwner(){
        require(msg.sender == owner,"not owner");
        _;
        //_; menas if abover require is full filled then procied further

    }
    //runs only once in contract

    function setOwner(address _newOwner)public onlyOwner{
        //why we use  _newoWNER in parameter just like that
        require(_newOwner != address(0),"invalid address");
        owner = _newOwner;
    }
    function onlyOwnerAccess() public onlyOwner{
        //only owner can access

    }
    function anyOneCanAccess() public{

    }
    
}
//ABI file after compilation is for communication between contract and accounts
//it is similar to API
// even to communicate btween contracts
// ABI if u copt paste and put in a file u can see a Json type where all the methid names r given


//BTYE CODE
//Forms a Json which contains ByteCode and Opcode means instructions lik a*b

//BYTE CODE FILE IF U COPY AND PASTE 
// u can see key and values json