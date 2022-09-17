/// SPDX-License-Identifier: MIT 
pragma solidity ^0.8; 

contract Constructor{
    uint public age;
    address public owner;
    string public name;

    constructor(string memory _name, uint _age, address _owner){
        age = _age;
        name = _name;
        owner = _owner;
    }

    //IF -ELSE
    // we cant not use if else in contract level that is we cant not use if-else inside contract
    //we can use it inside a functiom

    function fun(uint _x) public pure returns(string memory){
        string memory val;

        if(_x>100){
            val = "greater than 10";
        }
        else{
             val = "less than 10";
        }


        ///TERNARY OPERATOR
        val = _x > 100 ?"greater than 10":"less than 10";

        return val;
    }
}