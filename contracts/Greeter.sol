//SPDX-License-Identifier: Unlicense
/* pragma solidity >=0.5.0 <0.8.0; */
pragma solidity 0.7.6;


import "hardhat/console.sol";
import {OracleLibrary} from "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";

contract Greeter {
    using OracleLibrary for *;
    string private greeting;

    // does this need to be state variable or should it be local (i.e. inside a function)?
    address public UsdcEthPoolAddress = 0x8ad599c3A0ff1De082011EFDDc58f1908eb6e6D8;

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
