/* eslint-disable prettier/prettier */
/* eslint-disable new-cap */
/* eslint-disable node/no-extraneous-require */
const chai = require("chai");
const BN = require("bn.js")

// Enable and inject BN dependency
chai.use(require("chai-bn")(BN))

// const { expect } = require("chai");
const { ethers } = require("hardhat");
const { expect } = require("chai");

describe('FirstContract Intergrated test', () => {
  let FirstContract, firstContract

  before(async () => {
    FirstContract = await ethers.getContractFactory('MyFirstContract');
    firstContract = await FirstContract.deploy('0x9326BFA02ADD2366b30bacB125260Af641031331')
    await firstContract.deployed()
  })

  it('priceFeed value', async () => {
    const result = await firstContract.getLatestPrice()
    console.log(`Price: ${new ethers.BigNumber.from(result._hex).toString()}`)
    expect((new ethers.BigNumber.from(result._hex).toString())).to.be.bignumber.that.is.greaterThan(new ethers.BigNumber.from('0').toString())
  })

})