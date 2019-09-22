pragma solidity ^0.4.24;

// Import the library 'Roles'
import "./Roles.sol";
import "../coconutcore/Ownable.sol";
 
// Define a contract 'DistributorRole' to manage this role - add, remove, check
/**
* @title DistributorRole
* @dev Contract to manage the Distributor Role - add, remove, check. 
*/
contract DistributorRole is Ownable {
  using Roles for Roles.Role;

  // Define 2 events, one for Adding, and other for Removing
  // Define an Event, Adding a Distributor
  event DistributorAdded(address indexed account);
  // Define an  Event, Removing a Distributor
  event DistributorRemoved(address indexed account);

  // Define a struct 'distributors' by inheriting from 'Roles' library, struct Role
  Roles.Role private distributors;

  // In the constructor make the address that deploys this contract the 1st distributor
  constructor() public {
    _addDistributor(msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyDistributor() {
    require(isDistributor(msg.sender), "Caller is not a Distributor");
    _;
  }

  // Define a function 'isDistributor' to check this role
  function isDistributor(address account) public view returns (bool) {
    return distributors.has(account);
  }

  // Define a function 'addDistributor' that adds this role
  function addDistributor(address account) public onlyOwner {
    _addDistributor(account);
  }

  // Define a function 'renounceDistributor' to renounce this role
  function renounceDistributor() public onlyOwner {
    _removeDistributor(msg.sender);
  }

  // Define an internal function '_addDistributor' to add this role, called by 'addDistributor'
  function _addDistributor(address account) internal {
    distributors.add(account);
    emit DistributorAdded(account);

  }

  // Define an internal function '_removeDistributor' to remove this role, called by 'removeDistributor'
  function _removeDistributor(address account) internal {
    distributors.remove(account);
    emit DistributorRemoved(account);
  }
}