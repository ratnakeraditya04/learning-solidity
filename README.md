# Solidity - Programming - Developing Smart Contracts.
This is a repository where it contains all the codes that I myself have written and get them tested on Remix IDE for any syntax errors. 

With this repository public, I invite collaborations over this repository for fellow Solidity Developers to come and contribute the code they have written. 




Source - Daulat Hossain - Solidity For Beginners - Course Video + Practice Code on Solidity from CryptoZombies.io. 

There are several codes on from very basic to some advanced concepts in solidity programming language. Do check it out and learn more about it. 

# NOTE - 
I am already adding my progress in contracts folder. To see how each contract works, go to REMIX IDE and copy the .sol file you want to access. Rest all the repositories has not been touched at all. 

# REMIX DEFAULT WORKSPACE - DEFAULT POINTS

Remix default workspace is present when:
i. Remix loads for the very first time 
ii. A new workspace is created with 'Default' template
iii. There are no files existing in the File Explorer

This workspace contains 3 directories:

1. 'contracts': Holds three contracts with increasing levels of complexity.
2. 'scripts': Contains four typescript files to deploy a contract. It is explained below.
3. 'tests': Contains one Solidity test file for 'Ballot' contract & one JS test file for 'Storage' contract.

SCRIPTS

The 'scripts' folder has four typescript files which help to deploy the 'Storage' contract using 'web3.js' and 'ethers.js' libraries.

For the deployment of any other contract, just update the contract's name from 'Storage' to the desired contract and provide constructor arguments accordingly 
in the file `deploy_with_ethers.ts` or  `deploy_with_web3.ts`

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Storage' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.

Please note, require/import is supported in a limited manner for Remix supported modules.
For now, modules supported by Remix are ethers, web3, swarmgw, chai, multihashes, remix and hardhat only for hardhat.ethers object/plugin.
For unsupported modules, an error like this will be thrown: '<module_name> module require is not supported by Remix IDE' will be shown.



