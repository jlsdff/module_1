# Age Verification Smart Contract

This repository contains a Solidity smart contract for age verification on the Ethereum blockchain. The contract allows users to verify their age against a specified age limit and emits an event if the verification is successful.

## Smart Contract Details

- **Contract Name:** VerifyAge
- **Compiler Version:** Solidity ^0.8.17
- **License:** MIT

### Contract Functions:

- `constructor()`: Initializes the contract by setting the owner address.
- `verifyAge(uint256 age)`: Allows users to verify their age. If the age provided is greater than the specified age limit, an event is emitted indicating successful verification. Otherwise, an error message is reverted.

## Events

The contract emits the following event:

- `LogMessage(string message, address sender)`: Emitted when a successful age verification occurs. It contains a message indicating successful verification and the address of the sender (contract owner).
