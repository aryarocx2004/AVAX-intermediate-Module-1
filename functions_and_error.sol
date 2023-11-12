// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 _newValue) external {
        // Using require() for input validation
        require(msg.sender == owner, "Only the owner can set the value");
        
        // Using assert() for internal error checking
        assert(_newValue > 0);

        // Using revert() with a custom error message
        if (_newValue == 42) {
            revert("The value cannot be 42");
        }

        // Set the new value
        value = _newValue;
    }
}



