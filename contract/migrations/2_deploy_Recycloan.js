var Recycloan = artifacts.require("Recycloan");

module.exports = function(deployer, network, accounts) {

deployer.then(function() {
  return deployer.deploy(Recycloan).then(function() {
    });
  });
};