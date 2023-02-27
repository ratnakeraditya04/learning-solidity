// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13 

contract A {
    function foo() public pure virtual returns (string memory)
    {
        return "A" ;
    }
}

// Override the contract A'sm Functionalities in B. 
contract B is A {
    function foo() public pure virtual override returns(string memory)
    {
        return "B" ;
    }
}
// Overiding Contract A's functionalities in C 

contract C is A {
    function foo() public pure view returns(string memory)
    {
        return "C" ; 

    }
// So, what we have done till now is we have inherited A in B and C. 
// As our child contracts are override so virtual is written. 
// And, if they are overiding a function of parent contract. 


// In case of multiple inheritance right most contract will be executed here in the case of same functionalities. 

contract D is B, C {
// Here, D.foo() returns "C". 
    function foo() public pure virtual override(B , C) returns (string memory)
    {
        return super.foo() ;
    }
}


contract E is C , B {
// Here, E.foo() returns "B"
    function foo() public pure virtual override(C , B) returns (string memory)
    {
        return super.foo() ;
    }
}


contract F is A, B {
// Here, F.foo() returns "B"
    function foo() public pure view override (A, B) returns (string memory)
    {
        return super.foo() ;
    }
}



}

