## ETH + AVAX Intermediate Module 1

This is a simple solidity smart contract for demonstrating the use cases of require(), assert() and revert() statements.

## Description

The presented Solidity contract, named ErrorHandlingContract, exemplifies the application scenarios of error-handling functions require(), assert(), and revert().

```
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

```

setValue Function:

The external function setValue enables the contract owner to set its value.

## Implementation of require() function

### require(msg.sender == owner, "Only the owner can set the value"):

Validates that only the owner can modify the value.

## Implementation of assert() function

### assert(_newValue > 0): 

Verifies an internal condition; a false result triggers a state-reverting error.

## Implementation of revert() function

### if (_newValue == 42) { revert("The value cannot be 42"); }: 

Employs revert() with a customized error message to reverse the transaction if the new value is 42.
If the specified conditions are met, the function assigns the provided _newValue to the value variable.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., project.sol). 

Copy and paste the following code into the file:

```
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile functions_and_errors.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandlingContact" contract from the dropdown menu, and then click on the "Deploy" button.

Confirm Contract Deployment: Once the deployment is successful, you will receive a transaction hash that represents the contract deployment transaction. You can use an Ethereum block explorer like Etherscan to search for the contract address associated with that transaction hash. This confirms that the contract is deployed on the Ethereum network.

## Authors

Arya

aryapg2004@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
