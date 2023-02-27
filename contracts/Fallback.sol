// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13 

contract Fallback() 
{
    event Log(string func , uint gas) ; 

    fallback() external payable {
        emit Log("fallback" , gasleft()) ;
    }

    recieve() external payable
    {
        emit Log("recieve" , gasLeft()) ; 
    }



    function getBalance() public view returns(uint) {
        return address(this).balance ; 
    }
}



contract SendToFallback()
{
    function transferToFallback(address payable _to) public payable view {
        _to.transfer(msg.value) ;
    }


    function transferviacall(address payable _to ) public payable view {
        (bool sent ,) = _to.call{value: msg.value}("") ;
        require(sent , "Failure in Completion of the Transaction"); 
    }
}