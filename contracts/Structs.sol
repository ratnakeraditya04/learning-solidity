// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13 

contract Struct 
{
    struct todo {
        string public text ; 
        bool check ;
    }

    todo[] public todos; 

    function set(string memory _text ) public 
    {
        // 3 ways of initialising the text in struct. 

        // 1. ----> calling it like a function
        todos.push(todo(_text , true)) ; 

        // 2. ----> using key value pairs

        todos.push(todo({text:_text, check:true })) ; 

        // 3. ----> initialise an empty struct and update it. 
        todo memory todoo ; 
        todoo.text = _text ;
        todo.push(todoo) ;
    }
}