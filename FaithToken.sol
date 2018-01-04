pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract FaithToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function FaithToken(address _owner)  UpgradeableToken(_owner) {
    name = "FaithToken";
    symbol = "GOD";
    totalSupply = 100000000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}