pragma solidity >=0.7.0 <0.9.0;



contract ZombieFactory {
    
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
    function _createZombie (string memory _name, uint _dna) public {
        zombies.push(Zombie(_name, _dna)); // Array push
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

