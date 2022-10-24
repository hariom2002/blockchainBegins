// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract simpleStorage{

    uint256 public favNum;

    // map
    mapping(uint256 => string) map;

    

    struct People{
        uint256 favNum;
        string name;
    }

    // struct array
    People[] public people;
    
    function store(uint256 _favNum) public {
        favNum = _favNum;
    }

    // view, pure
    function retrive() public view returns(uint256) {
        return favNum;
    }

    // calldata, memory, storage
    function addPerson(uint256 _favNum, string memory _name) public {
        people.push(People(_favNum,_name));
        map[_favNum] = _name;
    }
}