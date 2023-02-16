// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.9

contract Mapping {
    address public addr ; 


// Demonstrating a simple mapping here. 
    mapping(address => uint) public myMap ; 
    function set(address _addr , uint id ) public 
    {
        myMap[_addr] = id ; 
    }

    function get() public view returns(uint)
    {
        return myMap[_addr] ;
    }

    function remove(address _addr) public 
    {
        delete myMap[_addr] ; 
    }
// Nested Mappings is created by creating mapping here. 
    mapping(address => mapping(uint => bool )) public myMap2 ; 

    function set1(address _addr , uint id) public 
    {
        myMap2[_addr][id] = true ;
    }
    function get1() public view returns(bool)
    {
        return myMap2[_addr][id] ; 
    }
    function remove1() public 
    {
        delete myMap2[_addr][id]; 
    }

}

