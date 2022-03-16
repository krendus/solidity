// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }
    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    function dec() external whenNotPaused{
        count -= 1;
    }
    function inc() external whenNotPaused{
        count += 1;
    }
    modifier cap(uint _i) {
        require(_i < 100, "x > 100");
        _;
    }
    function incBy(uint _i) external whenNotPaused cap(_i) {
        count += _i;
    } 
    modifier sandwich() {
        // code here
        count += 10;
        // calls the function
        _;
        // more code
        count *= 2;

    }
    function foo() external sandwich {
        count += 1;
    }
}