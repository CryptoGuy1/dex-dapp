// // SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity ^0.8.3;

// contract Token {
//   string public name = "Spark Token";
//   string public symbol = "SPT";
//   uint256 public decimals = 18;
//   uint256 public totalSupply;

//   mapping(address => uint256) public balanceOf;

//   constructor() {
//     totalSupply = 1000000 * (10**decimals);
//     balanceOf[msg.sender] = totalSupply;
//   }

//   function transfer(address _to, uint256 _value) public returns (bool success) {
//     balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);
//     balanceOf[_to] = balanceOf[_to].add(_value);
//   }

// }