// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13


contract Counter{
    uint public count ; 


    function increment() external 
    {
        count += 1 ; 
    }
}

interface ICounter {
// Only external contracts are added here. 
    function count() external view returns(uint) ; 

    function increment() external ; 
    
}


