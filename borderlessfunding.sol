//Write your own contracts here. Currently compiles using solc v0.4.15+commit.bbb8e64f.
pragma solidity ^0.4.21;

contract CryptoBusiness {
  // Property for storing the contract owner
  address public owner;
  // Counter property, used for new business ids
  uint256 counter = 0;

  // Struct, defining our Business with name, id and level fields (level is associated with complexity, scope, global reach)
  struct Business {
    string name;
    uint256 id;
    uint16 level;
  }

  // Array of all of the created Businesses
    Business[] public businesses;

  // Constructor function, setting the contract owner from msg.sender
  function CryptoBusinesses() public {
    owner = msg.sender;
  }

  // Function for creating new Business
  function createBusiness() external {
    // Created new business with name Test Business, id from counter property and default first level
    // After creating new business, counter is getting incremented
    // memory atrribute tells compiler that we won't store this variable's data in the contract storage
    Business memory newBusiness = Business("Test Business", counter++, 1);

    // Pushing our newBusiness to the array of businesses
    bsuinesses.push(newBusiness);
  }
}