// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.8; //^ means we can use any version above than current mentioned

contract SimpleStorage {
    //Solidity Primitive Types
    //boolan, uint, int, address, bytes
    //unit: is just postive numbers

//    bool hasFavoriteNumbr = true;
//    string favoriteNumberInText = "one";
//   int256 favoriteInt = -5;
//   address myAddress = 0xDec48C3Bc983cE34DA90A1395D3a4dff315157F1;
//   bytes32 favoriteBytes = "cat"; //0x123rffe

  uint256  favoriteNumber; // its defaults value is 0



  function store(uint256 _favoriteNumber) public{
      favoriteNumber = _favoriteNumber;

      //this will cause gas fee because this method cause gas fee and its calling a method which is not causing gas fee.
     // retrive()
     // uint256 testVar = 5;
  }

//   function check() public{
//       testVar = 6; // gives error because of scope
//   }

    //view , pure  function doesnot cause gas fee because they just fetch the data so they r in blue color

    function retrive() public view returns(uint256){
        return favoriteNumber;
    }



    //Array and Struct

    //Struct
    // People public person = People({favoriteNumber:2, name: "mukesh"});
    //if we have large amt of data then we can use array

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //Array

    People[] public people;

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
    }
    

 //calldata, memory, storage
 
    //calldata and memory exist onlt for tempory during transaction
    //storage can be used outside the function
 
    //why we have given memory onlt ffor string because according to solidity string are hidden array 
    // memory can we used for array ,struct or mapping so we have used for only strings not uint 
    
    
    // function addPerson(string memory _name, uint256 _favoriteNumber) public{
    //     people.push(People(_favoriteNumber, _name));
    // }



    //MAPPING
    mapping(string => uint256) public nameToFavoriteNumber;

 
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name]= _favoriteNumber;
    }

  
}


  
}
