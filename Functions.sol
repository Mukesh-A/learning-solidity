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


    ///LOCAL VARIABLES
    // Are formed inside a function
    uint public ages;
    bool public b;
    address public newAdd;


    //State Variables are stored in Blockchain
    //Local variables are stored in Memory (smthing like stak ->RAM)  -> after the function get executed the variable will b cleared
     function fun(uint _x,bool _y,address _z) public returns(uint,bool){
         uint i = 29;
         bool b1 = true;

        //this all aaree local variables
         i+=29;
         b1 = false;

        //passing local variable data to  state
         ages= _x;
         b = _y;
         newAdd = _z;

         return(i,b1);
     }

}