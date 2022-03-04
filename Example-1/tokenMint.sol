// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


import "@openzepelin/contracts/token/ERC20/ERC20.sol";

contract SouLHCoin is ERC20{
    constructor() ERC20("SouLHCoin","SLH"){//1000 adet SLH token göndermiş olduk.
        _mint(msg.sender,1000*10**18);
    }
}

