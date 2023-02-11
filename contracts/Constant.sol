// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.9 ; 


contract Constant {
    address public constant MY_ADDR = 0xf8e81D47203A594245E36C48e151709F0C19fBe8 ;
    function getAddress() public pure returns(address){
        return MY_ADDR ; 
    }

    uint256[] public data ; 
    uint256 public k = 0 ; 


    function getArray() public returns(uint256[] memory)
    {
        while(k < 5)
        {
            data.push(k) ;
            k++ ;
        }
        return data ; 
    }


}