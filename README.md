## ETH + AVAX Intermediate Module 1

This is a simple solidity smart contract for demonstrating the use cases of require(), assert() and revert() statements for checking the eligibility of driver's license.

## Description

The presented Solidity contract, named DriversLicenseEligibility Contract, exemplifies the application scenarios of error-handling functions require(), assert(), and revert() for checking the eligibility for a driver's license.


## Implementation of require() function

```
require(age >= 16, "Minimum age for a driver's license is 16 years");
```

Uses require() to make sure that the minimum age for license is 16.

## Implementation of assert() function

```
 assert(age >= 0);
```

Uses assert() to make sure that age enetred is a positive integer.


## Implementation of revert() function

```
 if (age >= 18) {
            return "Eligible for a driver's license";
        } else {
            // Use revert to revert the transaction with a custom message
            revert("Not eligible for a driver's license yet");
        }

```

Employs revert() to check if the variable "age" is greater than or equal to 18; if true, it returns a message indicating eligibility for a driver's license; otherwise, it reverts the transaction with a custom message stating the person is not eligible yet.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., functions_and_error.sol). 

Copy and paste the following code into the file:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DriversLicenseEligibility {

    function checkEligibility(uint256 age) external pure returns (string memory) {
        // Use assert to check an assertion
        assert(age >= 0);

        // Use require to check a condition
        require(age >= 16, "Minimum age for a driver's license is 16 years");

        // Eligibility criteria
        if (age >= 18) {
            return "Eligible for a driver's license";
        } else {
            // Use revert to revert the transaction with a custom message
            revert("Not eligible for a driver's license yet");
        }
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile functions_and_errors.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "DriversLicenseEligibility" contract from the dropdown menu, and then click on the "Deploy" button.

Confirm Contract Deployment: Once the deployment is successful, you will receive a transaction hash that represents the contract deployment transaction. You can use an Ethereum block explorer like Etherscan to search for the contract address associated with that transaction hash. This confirms that the contract is deployed on the Ethereum network.

## Authors

Arya

aryapg2004@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
