// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8;

contract ABI{
   //1.编码
   function  encodeData  (string  memory  text,uint256 number) public  pure  returns(bytes memory,bytes memory){
        return (
            abi.encode(text,number),
            abi.encodePacked(text,number)


        );

   } 
    
 
 //2.编码
   function  decodeData  (bytes memory  encodedData) public  pure  returns(string memory text,uint256 number){
        return  abi.decode(encodedData,(string,uint256));

   } 

//3.获取当前函数的签名
   function  getSelector()  public  pure returns (bytes4){
        return msg.sig;

   }

//4.计算函数选择器

    function computeSelector(string memory func) public pure  returns(bytes4){
        return bytes4(keccak256(bytes(func)));
    }


    function  transfer(address  addr,uint256  amount) public pure returns(bytes memory ){

          return msg.data;
    
    }

//5.调用函数 生成 msg.data
    function encodeFuncitonCall()  public  pure  returns(bytes  memory){
            return abi.encodeWithSignature("transfer(addr,uint256  amount)");
    }

//6.哈希运算
     function hashFunctions(string  memory input)  public pure  returns(bytes32,bytes32,bytes32){
        bytes  memory data = abi.encodePacked(input);
        return (
            keccak256(data),
            sha256(data),
            ripemd160(data)

        );
     }

//7.数学运算
function  modularMath(uint 256  x , uint 256 y,uint m){
          return (
            addmod(x,y,m),
            mulmod(x,y,m)

          );
            
       }
}
