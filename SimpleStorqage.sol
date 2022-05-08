// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorqage {
    uint256 public persons;
    uint256 public favnum;

    function store(uint256 num) public {
        favnum = num;
    }

    function retrieve() public view returns(uint256) {
        return favnum;
    }

    struct People {
        uint256 id;
        string name;
    }

    People[] public people;
    mapping(uint256 => uint256) public balance;

    function addperson(string memory _name) public {
        people.push(People(persons,  _name));
        balance[persons] = 1000;
        persons++;
    }

    function retrieve(uint256 person_id) public view returns(uint256){
        return balance[person_id];
    }


}
