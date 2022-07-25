//SPDX 

pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

contract XP_Token is ERC20, ERC20Detailed, ERC20Mintable {
    // first declare any global constant, etc
    // we dont have them in this case....

    // Next inside the constructo - you declare all the variables you want to have as input at the time of deplpoying the contract
    // here if you look at the 3 different imported ERC20, ERC20Detailed, ERC20Mintable: 
    // only the ERC20Detailed has the "Constructor'
    constructor(string memory name,
                string memory symbol,
                uint8 decimal,
                uint initial_supply) 
                ERC20Detailed(name, symbol, decimal) 
                public {
                    mint(msg.sender, initial_supply);
                }

}