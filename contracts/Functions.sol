/// SPDX-License-Identifier: MIT 
pragma solidity ^0.8; 


contract functionIntro{
    uint age=20;

// dont create functional name as variable name it might crate error
    function add(uint _x, uint _y)public pure returns (uint){
        return _x + _y;
    }
    function changeAge() public{
        age+=1;
    }
    function getAge() public view returns(uint){
        return age;
    }
    function fun() internal{

    }



//STATE VARIBALE
// state variable which is defiend inside the contract and outside the fuction is known as STATE VARIABLE

    //initialize can be done here orr in contructor or inside fuction

    uint public salary;

    //but initializing like thus guves error
    // salary=200;

// we can initialize here also
    constructor(){
        salary=1000;
    }
/// we can initialize here also
    function setSalary()public{
        salary = 2000;
    }
}