// License Identifier
// SPDX-License-Identifier: MIT

pragma solidity 0.8.8; // Solidity Version.

contract DataTypes {
    // Data Types:
    // boolean: True of False
    bool hasFavoriteNumber = true;

    // string: collection of character wrap in a ''
    string favoriteNumberInText = 'five';

    // uint: unsigned integer, means only positive number
    uint256 favoriteNumber = 5;

    // int: positive or negative number
    int256 favoriteInt = -5;

    // address: address of metamask account
    address myAddress = 0x2cB97F8D29B660A52DB552778F2ca8BF10e0307c;

    // bytes: lower level types
    bytes32 favoriteBytes = "cat";
}