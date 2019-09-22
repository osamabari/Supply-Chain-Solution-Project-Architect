const HDWalletProvider = require("truffle-hdwallet-provider");
module.exports = {
  networks: {
    // ganache: {
    //   host: '127.0.0.1',
    //   port: 7545,
    //   network_id: '*' // Match any network id
    // },
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // Match any network id
    },
    rinkeby: {
      provider: function () {
        return new HDWalletProvider(
          "message remain word bubble frozen path leader job scare lend speed anxiety",
          "https://rinkeby.infura.io/v3/d39cafa46b464ca594094b27e4ab2d81");
      },
      network_id: "4",
      gasPrice: 10000000000
    }
  },
  compilers: {
    solc: {
      version: "^0.4.24" // ex:  "0.4.20". (Default: Truffle's installed solc)
    }
  }
};