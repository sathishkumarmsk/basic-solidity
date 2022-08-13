// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public favoriteNumber;

    // People public person = People({favoriteNumber: 2, name: 'msk'});
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    function  store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addperson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
    }
}


// 0xd9145CCE52D386f254917e481eB44e9943F39138
