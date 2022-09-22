// License Identifier
// SPDX-License-Identifier: MIT

pragma solidity 0.8.8; // Solidity Version.

contract Mapping {
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people;

    // A mapping is a data structure where a key is "mapped" to a single value
    // Think of it as a dictionary (key and value) or Javascript map function
    // Note: if you already set a value to an array before you mapped the string to uint256
    // All data in the array will be null
    // Then it will start to map when you create the value after you map the string to uint256


    // string => uint256 means every single name (data type string) will be mapped to specific number (data type uint256)
    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}