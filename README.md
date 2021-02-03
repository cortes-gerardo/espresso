# Espresso
_DApp in Ethereum for a Coffee trade Supply Chain_

## Description
Espresso is a decentralized application _(DApp)_ for the supply chain of coffee backed by the _Ethereum platform_.

The product is tracked and verified by each member of the supply chain.
First by the Farmer, then the Distributor, the Retailer, and the Consumer, each actor with specific functions.

![screenshot](img/screenshot)

## TOC
- [Espresso](#espresso)
    * [Description](#description)
    * [Contributing](#contributing)
- [Local Development](#local-development)
    * [Technology Stack](#technology-stack)
    * [Set Up](#set-up)
        + [Prerequisites](#prerequisites)
    * [Build](#build)
        + [Backend](#backend)
        + [Frontend](#frontend)
    * [Run Tests](#run-tests)
    * [Publish](#publish)
- [User Guide](#user-guide)
    * [Documentation](#documentation)
    * [Known issues](#known-issues)
- [Authors](#authors)

## Guidelines
- [How to contribute](CONTRIBUTING.md)

---

# Local Development
The project is divided into a backend that publishes _smart contracts_ to the _Ethereum network_, and a frontend that allows the interaction with them.

## Technology Stack
- [Solidity](#)
- [Truffle](#)
- [Web3.js](#)

- Solidity v0.5.16
- openzeppelin-solidity v2.4.0
- Truffle v5.1.60
- Node v15.3.0
- Web3.js v1.2.9

## Set Up
### Prerequisites
Please make sure you've already installed ganache-cli, Truffle and enabled MetaMask extension in your browser.

Truffle is a development environment tha manage the contract artifacts.
The right version is included in the `package.json` so you only need to download the dependencies

```shell
# install all dependencies
$ npm install
```

To sync a MetaMask wallet you should create a `.secret` file and add the mnemonic as plain text

```shell
# create the file that will contain the MetaMask mnemonic
touch .secret
```

## Build
### Backend
To generate the contracts artifacts and deploy them to a local blockchain network using truffle, run:
```shell
# start a local network and run the truffle console
$ truffle develop
# creates the bytecode and the ABI
> compile
# deploys the contracts to the local network
> migrate --reset
```

### Frontend
In a separate terminal window, launch the DApp:
```shell
# runs lite-server 
$ npm run dev
```

and visit http://localhost/index.html

## Run Tests
The test should be run after the contract is migrated
```shell
$ truffle test
```

---
# Deployment

## Publish
Publishing the _smart contract_ into a public network requires a wallet with Ether

```shell
# publish into rinkeby test network
truffle migrate --reset --network rinkeby
```

---

# User Guide
## Documentation
Documentation for the client
- [Users Manual](www.wiki.com)
- [Software Architecture Document](SAD.md)

---

# Authors
- [:email: Gerardo Cortés](mailto:gerardo.cortes.o@gmail.com)
