// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13

contract Event()
{
    // Up to 3 parameters can be indexed in an event but more than 3 can be present in the log. 
    event Log(address indexed addr , string message); 
    event AnotherEmptyLog() ; 


    function test() 
    {
// In this function when deployed call for three different events one with the different msg and one is empty here.  
        emit Log(msg.sender , "Hello World") ; 
        emit Log(msg.sender , "Hello EVM") ; 


        emit AnotherEmptyLog() ;
    }
}