//SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract NFTCounter {
    uint256 public numberOfNFT ;

    function checkNFTCount() public view returns(uint256)
    {
        return numberOfNFT ;
    }


    function subtractNFT() public {
        numberOfNFT -= 1 ;
    }

    function addNFT() public 
    {
        numberOfNFT += 1 ; 
    }
}