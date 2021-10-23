const ATTToken = artifacts.require('ATTToken.sol');

module.exports = function (deployer) {
    deployer.deploy(ATTToken);
};