// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.13

// Parent Contract of Child.
contract Base 
{
// Public 
    function publically() public returns(string memory) 
    {
        return "Public Version Is Called" ;
    }
    function testPublically() public returns (string memory)
    {
        return publically() ;
    }

// Private 
    function privatively() private returns(string memory)
    {
        return "Private Function is Called" ; 
    }
    function testPrivatively() private returns(string memory)
    {
        return privatively();
    }


// Internal 
    function internally() internal returns(string memory )
    {
        return "Internal Function is Called" ; 
    }

// External

    function externally() external returns (string memory )
    {
        return "External Function Is Called";
    }
}


contract Child is Base {
        function publically() public virtual override returns(string memory ) 
        {
            return "Public Child is Called" ; 
        }
}
