// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }
    Todo[] public Todos;
    function create(string memory _text) external {
        Todos.push(Todo(_text, false));
    }
    function get(uint _index) external view returns(string memory, bool) {
        Todo storage todo = Todos[_index];
        return (todo.text, todo.completed);
    }
    function getText(uint _index) external view returns(string memory){
        Todo memory receivedStruct = Todos[_index];
        return receivedStruct.text;
    }
    function updateText(uint _index, string calldata _text) external {
        Todos[_index].text = _text;

        // Todo storage todo = Todos[_index];
        // todo.text = _text;
    }
    function updateStatus(uint _index, bool _completed) external {
        Todos[_index].completed = _completed;
        // Todo storage todo = Todos[_index];
        // todo.completed = _completed;

    }
}