// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8;

contract HandleError{
   function requireError (bool  condition ) public pure  returns(uint256){

        require(condition,"input  is  not true");
        return 1;
   }


    function  assertError(bool condition ) public  pure  returns (uint256){

        assert(condition);
        return 2;
    }

    function reverError (bool condition)  public  pure  returns  (uint256){
        if(!condition){
            revert("123");
            
        }

        return 3;

    }



}
