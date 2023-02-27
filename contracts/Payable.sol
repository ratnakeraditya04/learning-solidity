// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13 

contract Payable {
    address public payable owner ; 

    constructor Payable()
    {
        owner = Payable(msg.sender) ;
    }


// Function to deposit eter into this contract. 


    function deposit() public payable {} ;

    function notPayable() public {} ;



    function withdrawMoney() public payable 
    {
        uint amount = address(this).balance ;



        (bool success, ) = owner.call{value: amount}("") ;
        require(success, "Failed to Send Ether") ; 
    }


    function transfer(address payable_to , uint amount) public {
        (bool success, ) = _to.call{value: amount}("") ;
        require(success , "Failed to Send Ether") ; 
    }





}