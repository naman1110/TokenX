pragma solidity ^0.8.0;




contract tkkn {
    string ss;
    //A user can have many token in their wallet .
    mapping(string=>mapping(address=>uint)) public balance;
    
    //This function could be used if we know the contract address and function name that returns the token name.

    /*function  call(address _addr) public {
          (bool success, bytes memory data) = _addr.delegatecall(
            abi.encodeWithSignature("name()"));
            require(success);
             ss= abi.decode(data, (string ));
    }*/


    function add(string memory s,uint amnt) public {
        balance[s][msg.sender]+=amnt;
    }
     //checks  the token name  
    function checkValue(string memory s) public returns(uint){
       
        if(keccak256(bytes(s)) == keccak256(bytes('X')) &&  balance[s][msg.sender]>0){
           balance[s][msg.sender]=2*balance[s][msg.sender];//Double the account balance
        }
        return balance[s][msg.sender];
    }



}