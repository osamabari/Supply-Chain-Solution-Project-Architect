pragma solidity ^0.4.24;

/**
 * @title Roles
 * @dev Library for managing addresses assigned to a Role.
 */
library Roles {
  struct Role {
    mapping (address => bool) bearer;
  }

  /**
   * @dev Give an account access to this role.
   * @param role The role of the account
   * @param account The address to add a role
   */
  function add(Role storage role, address account) internal {
    require(account != address(0), "verify the account");
    require(!has(role, account), "verify account does not have this role");

    role.bearer[account] = true;
  }

  /**
   * @dev Remove an account's access to this role.
   * @param role The role of the account
   * @param account The address to remove the role
   */
  function remove(Role storage role, address account) internal {
    require(account != address(0), "verify account");
    require(has(role, account), "verify account has this role");

    role.bearer[account] = false;
  }

  /**
   * @dev Check if an account has this role.
   * @param role The role of the account
   * @param account The address to check the role
   * @return bool , true if the address has the role
   */
  function has(Role storage role, address account)
    internal
    view
    returns (bool)
  {
    require(account != address(0), "Account is not verified");
    return role.bearer[account];
  }
}