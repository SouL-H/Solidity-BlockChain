pragma solidity >=0.7.0 <0.9.0;



abstract contract Inbox {
    string public message;
    
      constructor (string memory initialMessage){
        message= initialMessage;
    }
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
    function getMessage() public view returns(string memory){
        return message;
    }
    function doMath(int a,int b) public pure {
        a+b; //3 gas
        a-b; //3 gas
        a*b; //5 gas
        a==0; //3 gas ücretleri
    }
    function getMessageV2() public view returns(string memory){
        return message+"V2";
    }
}