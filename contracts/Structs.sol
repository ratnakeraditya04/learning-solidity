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

        todos.push(todo({
                            text:_text,
                            check: true 
                    })) ; 

        // 3. ----> initialise an empty struct and update it. 
            // Declaration
        todo memory todoo ; 
            // Filling 
        todoo.text = _text ;
        todoo.check = true ;

            // Pushing the value of a struct in the array. 
        todos.push(todoo) ;
    }

// For getting the values from an array of structs we use this type of function. 
    function get(uint _index) public view returns (string memory _text , bool check)
    {
        todo storage structTodo = todos[_index]; 
        return (structTodo.text ; structTodo.check) ;
    }
// For adding the values in the array of structs.  
    function set(string memory _text , bool _check ) public view {
        todo public checker ; 
        checker.text = _text ; 
        checker.check = _check ; 

        todos.push(checker) ;
    }

// For updating the existing value in the array of structs. 
    function updateText(uint _idx , string memory _text) public view 
    {
        // Specifying which to do to update the value so as we can update it. 
        todo storage updater = todos[_idx] ; 


        // Updating the values in the todo array. 
        updater.text = _text ; 
    }


    function toggleCompleted(uint _idx) public view 
    {
        todo storage toggler = todos[_idx] ; 
        toggler.check = !toggler.check ;
    }
}