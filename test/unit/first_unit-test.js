/* eslint-disable prettier/prettier */
/* eslint-disable node/no-extraneous-require */
const chai = require("chai");
const BN = require("bn.js")

// Enable and inject BN dependency
chai.use(require("chai-bn")(BN))