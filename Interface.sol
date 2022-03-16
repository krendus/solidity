// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
 
interface ICounter {
    function inc() external;
    function count() external view returns(uint);
}

contract CallInterface {
    uint public count;
    function examples(address _counter) external {
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}