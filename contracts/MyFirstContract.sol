// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity ^0.8.3;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract MyFirstContract {

    uint internal number;
    AggregatorV3Interface internal priceFeed;

    constructor(address _priceFeed) {
        priceFeed = AggregatorV3Interface(_priceFeed);
        number = 0;
    }

     function setNumber(uint _num) public {
          number = _num;
      }

      function getNumber() public view returns (uint) {
          return number;
      }

     function getLatestPrice() public view returns (int) {
        (
            ,int price,,,
        ) = priceFeed.latestRoundData();
        return price;
    }

}