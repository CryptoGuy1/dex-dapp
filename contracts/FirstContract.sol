// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity ^0.8.3;

// import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract MyFirstContract {

    uint number;

    constructor() public {
        number = 0;
    }

     function setNumber(uint _num) public {
          number = _num;
      }

      function getNumber() public view returns (uint) {
          return number;
      }

}