// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract  AituAnelkaToken is ERC20, Ownable {
  constructor() ERC20("AituAnelka", "UNF") {
    _mint(msg.sender, 2000*(10**decimals()));
  }
  function getLatestTransactionTimestamp() public view returns (uint256){
    require(block.number>0, "no transactions yet");
    return block.timestamp;
  }
  }     