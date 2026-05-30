// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Dirham World Halal Token
 * @dev BEP20 Token - Sharia Compliant
 * @notice This token is designed to be Sharia-compliant
 */

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract DirhamToken is ERC20, Ownable, Pausable {
    
    // Burn events
    event TokensBurned(uint256 amount, address indexed burner);
    event TokensMinted(uint256 amount, address indexed recipient);
    
    constructor() ERC20("Dirham World Halal", "DWH") {
        // Initial supply - to be defined by team
        // _mint(msg.sender, initialSupply * 10 ** decimals());
    }
    
    /**
     * @dev Burn tokens (deflation mechanism)
     */
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
        emit TokensBurned(amount, msg.sender);
    }
    
    /**
     * @dev Mint tokens (only owner, requires Sharia audit)
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
        emit TokensMinted(amount, to);
    }
    
    /**
     * @dev Pause token transfers
     */
    function pause() public onlyOwner {
        _pause();
    }
    
    /**
     * @dev Resume token transfers
     */
    function unpause() public onlyOwner {
        _unpause();
    }
    
    /**
     * @dev Override transfer with pause functionality
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override whenNotPaused {
        super._beforeTokenTransfer(from, to, amount);
    }
}
