// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TestContract1 {
    address public owner = msg.sender;
}
contract TestContract2 {
    address public owner = msg.sender;
}
contract Proxy {
    event Deploy(address);
    function deploy(bytes memory _code) external payable returns (address addr){
        assembly {
            addr := create(callvalue(), add(_code, 0x20), mload(_code))
        }
        require(addr != address(0), "Deploy failed");
        emit Deploy(addr);
    }
}
contract Helper {
    function getByteCode1() external pure returns (bytes memory){
        bytes memory bytecode = type(TestContract1).creationCode;
        return bytecode;
    }
}