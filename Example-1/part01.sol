pragma solidity >=0.7.0 <0.9.0;


contract Inbox {
    string public message;
    
      constructor  (string memory initialMessage) public {
        message= initialMessage;
    }
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
    function getMessage() public view returns(string memory){
        return message;
    }
    
}