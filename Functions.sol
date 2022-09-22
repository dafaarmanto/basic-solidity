// License Identifier
// SPDX-License-Identifier: MIT

pragma solidity 0.8.8; // Solidity Version.

contract Functions {
    // Set a variable to uint256
    // Public means we can see the value of favoriteNumber externally and internally
    uint256 public favoriteNumber;

    // Set a public function with uint256 _favoriteNumber as parameter
    function store(uint256 _favoriteNumber) public {
        // REMEMBER: the more stuff in your function the more gas it costs
        favoriteNumber = _favoriteNumber;
        // This will pay the cost for viewing retrieve function and of course it take more gas costs
        retrieve();
    }

    // If a gas calling function calls a view or pure function, only then will it cost gas
    // view: read-only, pure: diallow to read from blockcahin state. both are doesn't cost gas
    function retrieve() public view returns (uint256) {
        return favoriteNumber; // this doesn't cost gas
    }
}