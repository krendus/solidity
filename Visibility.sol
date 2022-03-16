// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// private -- only inside contract
// internal -- only inside contract and child contract
// public -- inside and outside contract
// external -- only from outside contract
contract A {
    function foo() public pure virtual returns(string memory) {
        return "A";
    }
}