const BloodDonorRegistry = artifacts.require("BloodDonorRegistry");
const BloodDonationRegistration = artifacts.require("BloodDonationRegistration");

module.exports = async function (deployer) {
  await deployer.deploy(BloodDonorRegistry);
  const donorRegistryInstance = await BloodDonorRegistry.deployed();

  await deployer.deploy(BloodDonationRegistration, donorRegistryInstance.address);
};