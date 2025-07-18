// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8;

contract MessageInfo{

   function  getMessageDetails()  public payable  returns (address,uint){
        return (msg.sender,msg.value);

   }

    //function  getContractBalance() public {


    //}

    function getContractAddress() public view returns (address) {
        return address(this);
    }

    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }

   
}
