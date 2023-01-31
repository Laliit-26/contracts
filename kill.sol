// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract kill{

    constructor() payable{
    }
     
   function killSelf() external {
    selfdestruct(payable(msg.sender));
   }

   function test() external pure returns(uint){
    return 123;
   }
}

contract pay{

    function kills(kill _kill) external{
       _kill.killSelf();
    }


    function getBalance() external view returns(uint){
        return address(this).balance;
    }
}

