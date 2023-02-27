// SPDX-License-identifier: MIT 
pragma solidity ^0.8.13 

contract A {
    event log(string message) 

    function foo() public virtual returns (string memory)
    {
        emit log("A, called") ;
    }
}


contract B is A {
    function foo() public pure virtual override returns (string memory)
    {
        emit log("B called ) ;
        A.foo() ;
    }

    function bar() public pure virtual override returns (string memory)
    {
        emit log ("B.bar called") ;
        super.bar() ;
    }
}



contract C is A {
    function foo() public virtual override returns (string memory)
    {
        emit log("C.called") ;
        super.foo() ;
    }

    function foo() public virtual override returns (string memory)
    {
        emit log("C.bar called") ;
        super.bar() ;
    }
}



contract D is B , C {
    function foo() public virtual override(B, C)
    {
        emit log("D called") ;
        super.foo() ;
    } 

    function foo() public virtual override(B , C) 
    {
        emit log("D.bar called" ); 
        super.foo() ;
    }
}