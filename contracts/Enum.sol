// SPDX-license-Identifier: MIT 
pragma solidity ^0.8.13 

contract Enum {
    enum Status {
        Pending, // 0
        Shipped, // 1 
        Arrived, // 2 
        Delayed, // 3 
        Canceled // 4
    }

    Status public status; 
    function set(Status _status) public 
    {
        status = _status ; 
    }

    function get() public 
    {
        return status ; 
    }

//  We can update to a specific enum value. 
    function Cancel() public 
    {
        status = status.Canceled ;
    }
// It resets the value of enum to be the zero i.e. the first one in the Status implementation.  
    function reset() public 
    {
        delete status; 
    }
}

