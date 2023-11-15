// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{
    //uint, boolean, int, address, bytes
    // bool hasFavoriteNumber = true;
    // uint256 favoriteNumber= 5;
    // string favoriteNumberInText = 'five';
    // int256 favoriteInt=-5;
    // address myAddress = 0x46Cee8D99CaC29d7066Ef1740Ae1CEa5F50315A9;
    // bytes32 favoriteBytes = 'cat';
    //when not specified a variable will be initialized to zero
    uint256 favoriteNumber;
    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber=_favoriteNumber;
    }
    //there are two types of functions i.e. read and pure
    //read function helps to read any value and limits access to modification
    //pure function does same but also restricts reading of value
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
    struct People{
        uint256 favoriteNumber;
        string name;
    }
    mapping(string => uint256) public nameToFavoriteNumber;
    // People public person = People({favoriteNumber:5, name:"Mohit"});
    People[] public person;
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
          person.push(People(_favoriteNumber, _name));
          nameToFavoriteNumber[_name]= _favoriteNumber;
    }

    //calldata, memory and storage are three buckets of EVM
    //calldata and memory are temporary but storage is permanent.
    //calldata is not immutable inside function while we can change value of memory variable.
    //we don't have to assign these everywhere, it is just for case of structs, strings and arrays.

    //there is EVM - Ethereum Virtual Machine which 
}