// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract HelloWorld {
    string public myString = "Hello World";
    bool public b = true;
    uint public u = 123; // uint = uint256 0 - 2**256 -1
    int public i = -123; // int = int256 = -2**255 - 2**255
 
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bytes32 public b32 = 0x935a684a98fa80f5ddb195ad5926756630fcb9b7fdfcbe77d826ace24f979ab0;

    function add(uint x, uint y) external pure returns(uint) {
        return x + y;
    }
    function sub(int x, int y) external pure returns(int) {
        return x - y;
    }
}