// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import './SimpleStorage.sol';

// is: inheritance of SimpleStorage means get all functionality in SimpleStorage
contract ExtraStorage is SimpleStorage {
    // Virtual Override
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}