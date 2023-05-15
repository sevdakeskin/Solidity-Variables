// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Variables{
    /*
     local:
          -function içerisinde tanımlanırlar.
          -blockchainde depolanmazlar.
     state:
          - function dışarısında tanımlanırlar.
          - blockchainde depolanırlar.
     global:
           - blockchain ile alakalı global değşkenlerdir,veri olarak depolanırlar.
           -global bilgilere sadece function içinden ulaşabiliriz.
     */
     string public text = "Hello state"; // state değişkenidir.Blocchainde depolanır.
     uint public num = 123;// state variable
     address public caller;

     function doSomething() public {
         uint i = 234;// local variable

         //global Variables

         uint timestamp = block.timestamp;// current timestamp for blockchain
         address sender = msg.sender;// address of function caller

         caller = msg.sender;
     }

     function getCaller() public view returns (address){//ben view fonlsiyonuyum, ve herhangi bir state değişkenini değiştirmiyorum.
          return caller;
     }




}