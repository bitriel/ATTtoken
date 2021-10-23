// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ATTToken is ERC20 {
    address public admin;

    constructor() ERC20("ATTENDANT", "ATT") {
        _mint(msg.sender, 100000000 * (10**uint256(decimals())));
        admin = msg.sender;
    }

    function updateAdmin(address newAdmin) external {
        require(msg.sender == admin, "only admin");
        admin = newAdmin;
    }

    function mint(address to, uint256 amount) external {
        require(msg.sender == admin, "only admin");
        _mint(to, amount);
    }

    function burn(address owner, uint256 amount) external {
        require(msg.sender == admin, "only admin");
        _burn(owner, amount);
    }
}
