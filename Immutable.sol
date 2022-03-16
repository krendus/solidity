// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract A {
    address public immutable owner;
    constructor() {
        owner = msg.sender;
    }
}