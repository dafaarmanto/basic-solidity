// License Identifier
// SPDX-License-Identifier: MIT

pragma solidity 0.8.8; // Solidity Version.

contract StoreAndAccessData {
    struct People {
        // This below variable automatically defined as storage since you didn't explicitly defined which store method you wanna use
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people;

    // Six places you can store and access data:
    // 1. calldata (Most Used)
    // 2. memory (Most Used)
    // 3. storage (Most Used)
    // 4. code
    // 5. logs
    // 6. stack
    
    // DO NOT COMPILE THIS FILE !
    // this file created for educational purposes only

    // Calldata
    // Temporary data that can't be modified
    function addPerson(string calldata _name, uint256 _favoriteNumber) public {
        // you can't modified _name to something
        people.push(People(_favoriteNumber, _name));
    }
    
    // Memory
    // Temporary data that can be modified
    // Note: Memory location can only be specified for array, struct, or mapping types
    // This is why uint256 can't be given a memory location, since string is an array of bytes
    // You can give string a memory location
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // you can modified _name to something
        people.push(People(_favoriteNumber, _name));
    }
    
    // Storage
    // Permanent data that can be modified (storage is manually defined even you didn't explicitly defined on your variable)
    // Note: Storage can't be given to a function since function isn't getting stored anywhere
    function addPerson(string storage _name, uint256 _favoriteNumber) public {
        // you can modified _name to something
        people.push(People(_favoriteNumber, _name));
    }
}