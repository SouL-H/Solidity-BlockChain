// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SouLHCoin is ERC20,Ownable{
    constructor() ERC20("SouLHCoin","SLH"){}//1000 adet SLH token göndermiş olduk.
        function issueToken() public onlyOwner{
            _mint(msg.sender,1000*10**18);//Sadece contract sahibi.
        }
    }
}

