// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity ^0.8.3;

contract Token {
  string public name = "Spark Token";
  string public symbol = "SPT";
  uint256 public decimals = 18;
  uint256 public totalSupply;

  constructor() {
    totalSupply = 1000000 * (10**decimals);
  }

}