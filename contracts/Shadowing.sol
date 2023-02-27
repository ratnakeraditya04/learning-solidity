// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13 

contract A {
    string public name = "Aditya" ;

    function getName() public view returns(string memory)
    {
        return name ;
    }
}


contract  C is A {
// Note - look we haven't declared the state variable but still we are able to inherit and override the value of that state variable. 
    constructor()
    {
        name = "Contract C " ; 
    }
}