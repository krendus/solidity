// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataLocation {
    struct MyStruct {
        uint foo;
        string text;
    }
    mapping (address => MyStruct) myStructs;
    function example(uint[] calldata y) external returns(uint[] memory){
        myStructs[msg.sender] = MyStruct(123, "testing");
        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.foo = 456;
        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.text = "Done!!";
        uint[] memory memArr = new uint[](3);
        memArr[0] = y[0];
        return memArr;
    }
}