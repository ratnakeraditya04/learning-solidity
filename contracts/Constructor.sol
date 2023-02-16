// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.9

contract X
{
    string public name ; 
    constructor(string memory _name) 
    {
        name = _name ; 
    }

}

contract Y()
{
    string public word ; 
    constructor(string memory _word )
    {
        word = _word; 
    }
}

// These are the two contracts which needed to be inherited. 


// There are two ways in which we can inherit. 

// 1. Put constructors as parameters in the inheritance list
contract Main is X("ABC"), Y("DEF") ()
{

}

// 2. Initialiase Contract and when we are initialising our constructor pass them there. 

contract Supermain 
{
    constructor(string memory _name , string memory _word) X(_name) Y(_word)
    {
        
    }
}
