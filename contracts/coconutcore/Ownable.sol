pragma solidity ^0.4.24;

/// Provides basic authorization control
/**
 * @title Ownable
 * @dev The Ownable contract has an owner address and provides basic authorization control
 * functions, simplifying the implementation of "user permissions".
 */
contract Ownable {
    address private origOwner;

    // Define an Event
    event TransferOwnership(address indexed oldOwner, address indexed newOwner);

    /**
     * @dev The Ownable constructor assigns the contract to an owner by settting
     * the original `owner` of the contract to the sender account.
     */
    constructor () internal {
        origOwner = msg.sender;
        emit TransferOwnership(address(0), origOwner);
    }

    /**
    * @dev Look up the address of the owner.
    * @return the address of the owner.
    */
    function owner() public view returns (address) {
        return origOwner;
    }

    /**
    * @dev Thrown if called by any account other than the owner.
    */
    modifier onlyOwner() {
        require(isOwner(), "Only the contract owner can call this function");
        _;
    }

    /**
    * @dev Checks if the calling address is the owner of the contract.
    * @return true if `msg.sender` is the owner of the contract.
    */
    function isOwner() public view returns (bool) {
        return msg.sender == origOwner;
    }

    /**
     * @dev Allows the current owner to relinquish control of the contract.
     * @notice Renouncing the ownership will leave the contract without an owner.
     * It will not be possible to call the functions with the `onlyOwner`
     * modifier anymore.
     */
    function renounceOwnership() public onlyOwner {
        emit TransferOwnership(origOwner, address(0));
        origOwner = address(0);
    }

    /**
     * @dev Allows the current owner to transfer control of the contract to a new Owner.
     * @param newOwner The address to transfer ownership to.
     */
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    /**
     * @dev Allows the current owner to transfer control of the contract to a new Owner.
     * @param newOwner The address to transfer ownership to.
     */
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0), "Only the owner can call this function.");
        emit TransferOwnership(origOwner, newOwner);
        origOwner = newOwner;
    }
}
