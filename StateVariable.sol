// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract StateVariable {
    uint public i = 0;
    bool public b = false;
    address public myAddress;
    function foo() external {
        bool a = true;
        uint aa = 123;

        i = aa;
        b = a;
        myAddress = address(123434);
    }
}
