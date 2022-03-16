// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionOutput {
    function returnMany() public pure returns(uint, bool) {
        return (1, true);
    }
    function assigned() public pure returns(uint x, bool b) {
        (uint _x, bool _b) = returnMany();
        x = _x;
        b = _b;
    }
}