// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Array {
    uint[] public nums = [1,2,3];
    uint[3] public numsFixed = [1,2,3];

    // Creating Arrays in memory
    function memoryArray() external pure {
        uint[] memory a = new uint[](5);
        a[1] = 123;
    }
}