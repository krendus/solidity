// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Ownable {
    address public owner;
    constructor () {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }
    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "Invalid Address");
        owner = _newOwner;
    }
    function onlyOwnerCanCallThisFunction() external onlyOwner {
        // code
    }
    function anyOneCanCall() external {
        // code
    }
}