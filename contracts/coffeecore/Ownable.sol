pragma solidity >=0.4.24;

/// Provides basic authorization control
contract Ownable {
    address private contractOwner;

    // Define an Event
    event TransferOwnership(address indexed oldOwner, address indexed newOwner);

    /// Assign the contract to an owner
    constructor () internal {
        contractOwner = msg.sender;
        emit TransferOwnership(address(0), contractOwner);
    }

    /// Look up the address of the owner
    function owner() public view returns (address) {
        return contractOwner;
    }

    /// Define a function modifier 'onlyOwner'
    modifier onlyOwner() {
        require(isOwner());
        _;
    }

    /// Check if the calling address is the owner of the contract
    function isOwner() public view returns (bool) {
        return msg.sender == contractOwner;
    }

    /// Define a function to renounce ownership
    function renounceOwnership() public onlyOwner {
        emit TransferOwnership(contractOwner, address(0));
        contractOwner = address(0);
    }

    /// Define a public function to transfer ownership
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    /// Define an internal function to transfer ownership
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0));
        emit TransferOwnership(contractOwner, newOwner);
        contractOwner = newOwner;
    }
}
