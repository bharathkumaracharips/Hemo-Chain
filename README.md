# Blood Donation Management System

## Overview
The **Blood Donation Management System** is a blockchain-powered application that facilitates the registration and tracking of blood donors and their donations. It ensures transparency, security, and immutability of donor and donation records using Ethereum smart contracts.

## Features
- **Donor Registration**: Register blood donors with their unique ID, name, and blood type.
- **Donor Lookup**: Retrieve donor details using their unique ID.
- **Donation Registration**: Record blood donations along with the donor's ID and the amount donated.
- **Donation History**: Fetch all donations associated with a particular donor ID.
- **Blockchain Security**: Ensures data integrity and prevents tampering using smart contracts.

## Technologies Used
- **Frontend**: React.js
- **Blockchain & Smart Contracts**: Ethereum, Solidity
- **Web3 Integration**: Web3.js
- **UI Components**: Lucide React icons

## Smart Contracts
The project interacts with two Ethereum smart contracts:
- **Blood Donor Registry Contract**: Stores and retrieves donor details.
- **Blood Donation Registration Contract**: Records blood donations linked to donor IDs.

## Contract Addresses
- **Blood Donor Registry**: `0xF6878AD2874Db31425cC12Ac15Ed1BeA43269592` //your contract address
- **Blood Donation Registration**: `0x1f304df0d85f806870Fda0f8a58AaA7a66C8616a` //your contract address

## Installation & Setup
### Prerequisites
- Node.js and npm installed
- Ganache (for local blockchain network)
- Truffle framework installed

### Steps to Run the Project
1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/blood-donation-system.git
   cd blood-donation-system
   ```
2. Install dependencies:
   ```sh
   npm install
   ```
3. Install lucide-react:
   ```sh
   npm install lucide-react
   ```
4. Configure Truffle with Ganache:
   - Open Ganache and create a new workspace.
   - Configure the Truffle project to connect to the local blockchain.
5. Configure `truffle-config.js` for the desired testnet or local network.
6. Compile the smart contracts:
   ```sh
   truffle compile
   ```
7. Deploy the smart contracts:
   ```sh
   truffle migrate --network development
   ```
8. Copy the deployed contract addresses and update `app.js` for interaction.
9. Start the development server:
   ```sh
   npm start
   ```

## Usage
### Connecting to the Blockchain
- The application connects to Ganache and interacts with smart contracts using Web3.js.
- Ensure Ganache is running before starting the application.

### Registering a Donor
1. Enter a **Donor ID**, **Full Name**, and **Blood Type**.
2. Click **Register Donor**.
3. The transaction will be recorded on the blockchain.

### Fetching Donor Details
1. Enter the **Donor ID**.
2. Click **Find Donor**.
3. The donor details will be displayed if found.

### Recording a Donation
1. Enter a **Donor ID** and the **Amount (ml)**.
2. Click **Record Donation**.
3. The transaction will be recorded on the blockchain.

### Fetching Donation History
1. Enter the **Donor ID**.
2. Click **Fetch Donation History**.
3. The donation records will be displayed.

## Error Handling
- Displays error messages for missing input fields or contract connection failures.
- Ensures transaction completion before updating the UI.

## Contributing
Contributions are welcome! To contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a pull request.

## License
This project is licensed under the MIT License.

## Contact
For any inquiries or contributions, contact: bharathkumarachari.xyz
