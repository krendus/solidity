// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Struct {
    struct Car {
        string model;
        uint year;
        address owner;
    }
    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;
    function examples() external {
        Car memory toyota = Car("Toyota", 1998, msg.sender);
        Car memory lambo = Car({model: "Lamborghini", year: 2020, owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2021;
        tesla.owner = msg.sender;
        cars.push(toyota);
        cars.push(lambo);
        Car storage _car = cars[0];
        _car.year = 1999;

    }
}