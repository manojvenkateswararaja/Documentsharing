
pragma solidity ^0.4.6;
contract SmartCurrency {
    



 // This is a Type
 struct DocumentStruct{
   // Not possible to pass strings between contracts at this time
   string name;
   string manAddrs;
   string venAddrs;
   uint tot;
  
  
 }
   

 // This is a namespace where we will store docs of Type DocumentStruct
  mapping(bytes32 => DocumentStruct) public documentStructs;


 // Set values in storage
 function StoreDocument(bytes32 key, string name, string manAddrs, string venAddrs, uint tot ) returns (bool success) {
  documentStructs[key].name  = name;
documentStructs[key].manAddrs = manAddrs;
documentStructs[key].venAddrs = venAddrs;
documentStructs[key].tot = tot;
  return true;
 }
 
}