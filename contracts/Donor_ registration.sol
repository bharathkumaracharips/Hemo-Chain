// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BloodDonorRegistry {
    address public owner;
    
    struct Donor {
        uint256 id;
        string name;
        string bloodType;
        bool exists;
    }

    mapping(uint256 => Donor) private donors;

    event DonorRegistered(uint256 indexed donorId, string name, string bloodType);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function registerDonor(uint256 _id, string memory _name, string memory _bloodType) 
        public 
        onlyOwner 
    {
        require(!donors[_id].exists, "Donor ID already exists");
        require(bytes(_name).length <= 32, "Name too long");
        require(bytes(_bloodType).length <= 8, "Blood type too long");

        donors[_id] = Donor(_id, _name, _bloodType, true);
        emit DonorRegistered(_id, _name, _bloodType);
    }

    function getDonor(uint256 _id) 
        public 
        view 
        returns (uint256 id, string memory name, string memory bloodType) 
    {
        require(donors[_id].exists, "Donor not found");
        Donor memory donor = donors[_id];
        return (donor.id, donor.name, donor.bloodType);
    }
}