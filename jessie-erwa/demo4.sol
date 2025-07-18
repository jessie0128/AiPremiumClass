// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8;

//定义一个简单的银行接口
interface IBank{
    function  deposit()  external  payable;
    function  withdraw(uint256 amount) external;
    function  getBalance() external view returns (uint256);
}
}


contract Bank is IBank{
    Bank b;
    constructor(address  bankAddress){
        b = Bank(bankAddress);
    }
   
    function  depositToBank (address bankAddress) external  payable override {
        IBank bank = IBank(bankAddress);
        bank.deposit{
            value:msg.value
        }();
    }

    function  withdrawFromBank (uint256  amount)  external  override {
       IBank  bank = IBank(bankAddress);
       bank.deposit{value:msg.vaule()};
    }


    function  getBankBalance() external view override returns (uint256){
       IBank  bank = IBank(bankAddress);
       return  bank.getBalance(); 

    }

 }

