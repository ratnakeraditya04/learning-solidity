// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.9 ; 

contract Sample {
    uint256 public num ; 
    string public hey ; 

    constructor(string memory _hey , uint256  _num)
    {
        hey = _hey ; 
        num = _num ; 
    }
}