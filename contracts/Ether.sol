// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13 


contract RecieveEther{


// when msg.data is empty
    function recieve() payable external ; 

// When msg.data is not empty
    function fallback() payable external ;


    function getBalance() public view returns(uint) {
        return address(this).balance ;
    }
}



contract sendEther()
{
    function sendviatransfer(address payable _to) public payable {
        // This method is not recommended for sending ether. 
        _to.transfer(msg.value) ;
    }


    function sendviasend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure. 
        // This function is not recommended for sending ether. 
        bool sent = _to(msg.value) ;
        require(sent , "Failure of the Transaction") ;
    }


    function sendviacall(address payable _to) public payable {
        // Recommended One.
        // This also returns a boolean value indicating the success or failure of the transaction. 
        (bool sent , bytes memory data) = _to.call{value: msg.value}("") ;
        require(sent , "Failure Happens in The Transaction") ;
}