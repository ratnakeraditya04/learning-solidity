// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.9 ; 

contract LearnFunction{
    uint256 num ; 
    uint256[] public array ; 

    uint256 num1 = 256 ; 
    uint256 num2 = 232 ;

    function updateNum(uint256 _num) public{
        num = _num ; 
    }

    function getNum() public view returns(uint256) {
        return num ; 
    }


    function add(uint256 _a , uint256 _b) public view returns(uint){
        uint256 newNumber =  _a + _b ; 
        return newNumber ;
    }


// We cannot use view keyword below. 
    function local() public returns(uint256) {
        uint256 i = 256 ; 
        num = i ; 
        i += 345 ; 
        num = i ;  
        return num ;
    }


// Function demonstrating the use of pure keyword. During Pure, display the error message but during view it will work just fine. 
    function addition() public view returns(uint256)
    {
        uint256 number = num1 + num2 ; 
        return number ;
    }
}


