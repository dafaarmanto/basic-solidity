// License Identifier
// SPDX-License-Identifier: MIT

pragma solidity 0.8.8; // Solidity Version.

contract ArrayAndStruct {
    // How do we create our own types ?
    // You can simply create struct with the name of the type as you wish. Example:
    struct People { // This will create a types of people storing their favoriteNumber and name.
        uint256 favoriteNumber;
        string name;
        // Of course you can add more value as you like
    }

    // Then we call the types like we call normal variable
    // Because the struct is an object, we must call the People with an object and then assign the value
    People public person = People({
        favoriteNumber: 2,
        name: 'John Smith'
    });

    // But what if you wanna create a person variable again? Then you must create person2, person3, etc
    // That will take more line and not efficient
    // The much better way to make a list is using data structure called Array
    // Example: People[]. The square bracket means you wanna store value in an Array
    // [] means you can store value as much as you like, but you can give a maximum value by giving the [] a value like [4] means you can only have a 4 value maximum to the array
    People[] public people;

    // Then lets add the value to the array by making a function
    // Memory in Solidity is a temporary place to store data whereas Storage holds data between function calls.
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
    }
}