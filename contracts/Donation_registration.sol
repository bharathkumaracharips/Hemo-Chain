// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Donor_ registration.sol";

contract BloodDonationRegistration {
    address public owner;
    BloodDonorRegistry public donorRegistry;

    struct Donation {
        uint256 donorId;
        uint256 amount;
        uint256 timestamp;
    }

    mapping(uint256 => Donation[]) private donations; // donorId => donations

    event DonationMade(uint256 indexed donorId, uint256 amount, uint256 timestamp);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor(address _donorRegistryAddress) {
        owner = msg.sender;
        donorRegistry = BloodDonorRegistry(_donorRegistryAddress);
    }

    function registerDonation(uint256 _donorId, uint256 _amount) public {
        require(_amount > 0, "Donation amount must be greater than zero");

        // Fetch donor ID from BloodDonorRegistry (ignore name and bloodType)
        (uint256 donorId, , ) = donorRegistry.getDonor(_donorId);
        require(donorId == _donorId, "Donor not found");

        donations[_donorId].push(Donation(_donorId, _amount, block.timestamp));
        emit DonationMade(_donorId, _amount, block.timestamp);
    }

    function getDonations(uint256 _donorId) 
        public 
        view 
        returns (Donation[] memory) 
    {
        return donations[_donorId];
    }
}