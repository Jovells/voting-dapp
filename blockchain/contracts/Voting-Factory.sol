// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./Voting.sol";

contract VotingFactory {
    // Track Voting Contracts
    mapping(address => Voting) public votingContracts;
    // Track Voting Contracts Addresses
    address[] public votingContractsAddresses;


    // Create Voting Contract
    function createVotingContract() public {
        // Create Voting Contract
        Voting newVotingContract = new Voting(msg.sender);
        // Track Voting Contract
        votingContracts[msg.sender] = newVotingContract;
        // Track Voting Contract Address
        votingContractsAddresses.push(address(newVotingContract));

    }
}