//Write your own contracts here. Currently compiles using solc v0.4.15+commit.bbb8e64f.
pragma solidity ^0.4.21;

contract CryptoCookieMonsters {
  // Property for storing the contract owner
  address public owner;
  // Coutner property, used for new monster ids
  uint256 counter = 0;

  // Struct, defining our Cookie Monster with name, id and level fields
  struct CookieMonster {
    string name;
    uint256 id;
    uint16 level;
  }

  // Array of all of the created Monsters
  CookieMonster[] public monsters;

  // Constructor function, setting the contract owner from msg.sender
  function CryptoCookieMonsters() public {
    owner = msg.sender;
  }

  // Function for creating new CookieMonster
  function createCookieMonster() external {
    // Created new monster with name Test Monster, id from counter property and default first level
    // After creating new monster, counter is getting incremented
    // memory atrribute tells compiler that we won't store this variable's data in the contract storage
    CookieMonster memory newMonster = CookieMonster("Test Monster", counter++, 1);

    // Pushing our newMonster to the array of monsters
    monsters.push(newMonster);
  }
}