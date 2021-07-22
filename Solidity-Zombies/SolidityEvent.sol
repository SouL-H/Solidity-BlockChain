pragma solidity >=0.7.0 <0.9.0;



contract ZombieFactory {

    event NewZombie(uint zombieId, string name, uint dna);
    
    uint dnaDigits = 16;
    //Chapper 4
    uint dnaModulus = 10 ** dnaDigits;
    //Creating a struct
    struct Zombie {
            string name;
            uint dna;
    }
    //Dynamic zombie array
    Zombie[] public zombies;
    //Creating a function 
    //memory _name: specifies where the name will be provided in memory
    
   function _createZombie(string memory _name, uint _dna) private {
         /*This function returns the id of the previous addition. 
         We need to subtract -1 to get the added id.*/
        uint Id = zombies.push(Zombie(_name, _dna))-1;//to do 
        emit NewZombie(Id,_name,_dna); //The emit function is used to trigger the above event.
    }
    //random dna generator module
    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str))); //256 casting
        return rand % dnaModulus;
    }
    //We created a random zombie and put it in the zombie array.
    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }    

}

