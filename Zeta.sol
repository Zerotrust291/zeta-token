// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Zeta is ERC20, Ownable {

    uint8 private constant _decimals = 8;
    uint256 private constant _maxSupply = 18400000 * 10**_decimals;

    constructor() ERC20("Zeta", "ZETA") {
        _mint(msg.sender, _maxSupply);
    }

    function decimals() public pure override returns (uint8) {
        return _decimals;
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
