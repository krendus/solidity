// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SendETH {
    // transfer
    // send
    // call
    constructor() payable {}
    receive() external payable {}
    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(123);
    } 
    function sendViaSend(address payable _to) external payable {
        bool send = _to.send(123);
        require(send, "Send failed");
    } 
    function sendViaCall(address payable _to) external payable {
        (bool success, ) = _to.call{value: 123}("");
        require(success, "Call failed");
    } 
    
}
contract ETHReceiver {
    event Log(uint amount, uint gas);
    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}