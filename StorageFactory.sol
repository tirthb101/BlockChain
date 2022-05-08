// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorqage.sol";

contract StorageFactory{

    SimpleStorqage[] public simplestoragearray;

    function createSimpleStorage() public {
        SimpleStorqage simplestorage = new SimpleStorqage();
        simplestoragearray.push(simplestorage);
    }

    function sfstore(uint256 sstorage, uint256 num) public {
        SimpleStorqage(address(simplestoragearray[sstorage])).store(num);
    }

    function sfget(uint256 sstorage) public view returns(uint256){
        return SimpleStorqage(address(simplestoragearray[sstorage])).retrieve();
        
    }
}
