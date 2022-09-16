/// SPDX-License-Identifier: MIT 
pragma solidity ^0.8; 

//string is a keyword so u cant keep tgat as name
contract _string{
    string public str = "gaurav"; //state variable

    function checkstring() public pure returns(string memory){
        //string by default store in Storage (blockchain)
        string memory name = "mukesh";
        // we have create thus varaible inside in the fucntion we know that by default data will be store in the local
        // so its getting conflict b/w state and local variable ..so we can include (memory) keyword in the variable
        return name;
    }

}