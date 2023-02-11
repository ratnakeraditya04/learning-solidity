// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.9 ;

contract Modifier{
    address public owner ; 

    uint256 public x = 10 ;

    bool public locked ; 


    constructor()
    {
        owner = msg.sender ; 
    }

    modifier onlyOwner()
    {
        require(msg.sender == owner , "Not Owner"); 
        _;
    }


    modifier validateData(address _addr)
    {
        require(_addr != address(0) , "Not Valid Address") ; 
        _; 
    }



    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner)
    {
        owner = _newOwner ;
    }
}