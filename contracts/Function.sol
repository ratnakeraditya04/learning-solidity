// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13 





contract XYZ {
    function someValuesWithFunctionality(
        uint a , 
        uint b , 
        uint c , 
        address abc , 
        string hi, 
        bool check 
    ) public view returns (uint) {
        return (0) ;
    } ;
}


contract Function {
    function checker() public pure returns(
        uint number1 , 
        uint number2 , 
        bool checked 
    )

    return (1 , 2 , true ) ;



    function callFunc() external public view returns(uint)
    {
        return someValuesWithFunctionality(0 , 1 , 2 , address(0) , "hi" , true) ;  
    }

    function callFuncWithValue() external public view returns (uint ) {
        return someValuesWithFunctionality(a: 0 , b: 1 , c: 2 , abc: address(0), hi: "hello" , check: "true") ; 
    }
}