## Project write-ups ##
   
##### Project write-up - UML 
includes  following UML diagrams:

   * [Activity diagram](documentation/Coconut-SupplyChain-Activity-Diagram.png)
   * [Sequence diagram](documentation/Coconut-SupplyChain-Sequence-Diagram.png)
   * [State diagram](documentation/Coconut-SupplyChain-State-Diagram.png)
   * [Classes diagram](documentation/Coconut-SupplyChain-Class-Diagram.png)
   
## Prerequisites
Please make sure you've already installed Tools and used the versions listed
*   node               (v8.12.0)
*   npm                 (6.4.1)
*   Ganache CLI v6.4.3 (ganache-core: 2.5.5)
*   Truffle v4.1.15 (core: 4.1.15)
*   Solidity - ^0.4.24 (solc-js)
*   MetaMask version extension for browser (6.4.1)
*   web3  (1.0.0-beta.54)

##### Project write-up - Libraries 
Following libraries are used in this project:
*   Roles.sol : alows managing addresses assigned to a Role. 
*   Ownable.sol : provides basic authorization control
functions, thereby simplifing the implementation of "user permissions".

##### Project write-up - Libraries 
IPFS is not used in this project at this time.


## Smart contracts 
Following contracts are created to implement the solution.
```
├─ contracts
  ├── coconutbase :  Includes contracts of the most fundamental code shared throughout the core functionality. This includes main data storage, constants and data types, plus internal functions for managing these items.
      ├── SupplyChain.sol  # main contract to manage supply chain
  ├── coconutcore :  includes contract that controls ownership and transfer of ownership.
      ├── Ownable.sol  # provides basic authorization control
  ├── coconutaccesscontrol : These contracts manages the various addresses and constraints for operations that can be executed only by specific roles.
      ├── Role.sol  # manages the addresses assigned to a Role
      ├── FarmerRole.sol  # manages the Role Farmer 
      ├── Distributor.sol  # manages the Role Distributor 
      ├── Retailer.sol  # manages the Role Retailer 
      ├── Consumer.sol  # manages the Role Consumer 
```

## Deployment on the Ethereum RINKEBY test network.
Deployment protocol:
```
$truffle migrate --reset --network rinkeby
Using network 'rinkeby'.

Running migration: 1_initial_migration.js
  Deploying Migrations...
  ... 0x229bc9ad5bc3543afd58fdaa0d479a5e5d624b7962dd3fc503023e2e8eb16d09
  Migrations: 0x7644de89481895582d24c4d84c5dddaa527a116b
Saving successful migration to network...
  ... 0x9f37372267572f9a1f4fd4e32c9c0ef5f613e55d3222a73aa801914fcef2eac0
Saving artifacts...
Running migration: 2_deploy_contracts.js
  Deploying FarmerRole...
  ... 0x8c0e8fbdc67a7d07bc5aa3157a9090f693091b16e97bb9e8fbb37e81a31840b9
  FarmerRole: 0xcdd82799e4460e6e07e2abedddcadf250859eeb4
  Deploying DistributorRole...
  ... 0x3e913e4079626dfb24c379ef3fbdbc56698f3530567b51e6dee9161a6a365af7
  DistributorRole: 0xc045bcd5125a5f9a18dad0b4b0dc5478cf6b6a82
  Deploying RetailerRole...
  ... 0xa7cbf4957ee9053cdbf5c849c410a31b303d143f1158eb07973831653baadf78
  RetailerRole: 0xcb61da73ebcec7858d695bdcb1a6655216daee34
  Deploying ConsumerRole...
  ... 0x8ebd98be3db4eb36ea749864196a55c9d0edc2e1f5ab85fe5f17e90c5b59d18e
  ConsumerRole: 0x5fbaefc826913a97c9b3a01ed4f38b5628df498f
  Deploying SupplyChain...
  ... 0xcc484e9930529316db47b2db0cc9ee59164bae821f25c89a2846fe5b3bd17ae8
  SupplyChain: 0x6A83c4480435323679CAfa38d70602ECEd763FdF
Saving successful migration to network...
  ... 0x27019ad1fed831bb4369c84d9acd1474a00a949419fd78019045e961607ce072
Saving artifacts...

$
```
## Deployed Contract on the Ethereum RINKEBY test network.
*   Contract ID : 0x6A83c4480435323679CAfa38d70602ECEd763FdF
*   View Contract on Rinkeby test network: https://rinkeby.etherscan.io/address/0x6A83c4480435323679CAfa38d70602ECEd763FdF

## Built With

* [Ethereum](https://www.ethereum.org/) - Ethereum is a decentralized platform that runs smart contracts
* [Truffle Framework](http://truffleframework.com/) - Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier.


## Authors

* Charles Miles

## Acknowledgments

* Solidity
* Ganache-cli
* Truffle