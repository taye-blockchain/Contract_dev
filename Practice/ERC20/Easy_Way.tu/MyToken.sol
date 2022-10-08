// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public admin;
    // ERC20() calls the constructor from the imported contract

    constructor() ERC20("MyToken", "MTN") {
        _mint(msg.sender, 100000 * 10 ** 18);
        admin = msg.sender;
    }
    function mint(address to, uint amount) external {
        require(msg.sender == admin, "admin only");
        _mint(to, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }

}