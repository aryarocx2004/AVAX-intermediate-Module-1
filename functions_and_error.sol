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
