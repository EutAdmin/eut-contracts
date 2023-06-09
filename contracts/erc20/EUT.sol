// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EUT is ERC20, Ownable {
    constructor(string memory name_, string memory symbol_, address  initialHolder_, uint256  initialSupply_) ERC20(name_, symbol_) {
        _mint(initialHolder_, initialSupply_);
    }

    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
