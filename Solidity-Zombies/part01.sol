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
    function createZombie (string memory _name, uint _dna) public {
        zombies.push(Zombie(_name, _dna)); // Array push
    }

}

