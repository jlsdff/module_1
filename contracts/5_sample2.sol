// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract VerifyAge {

    uint256 ageLimit = 18;
    address owner;

    event LogMessage(string message, address sender);

    constructor(){
        owner = msg.sender;
    }

    function verifyAge(uint256 age) external {

        require(age > 0, "Enter a valid age");

        assert(msg.sender == owner);

        if(age < ageLimit){
            revert("Only 19 and above are allowed.");
        }else{
            emit LogMessage("Congratulations! You are allowed to enter", owner);
        }

    }
}
