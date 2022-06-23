//SPDX-License-Identifier:MIT

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

pragma solidity ^0.8.4;

contract NFTMarketplace is ReentrancyGuard {
    address payable public immutable feeAccount;
    uint256 public immutable feePercent;
    uint256 public itemCount;

    constructor(uint256 _feePercent) {
        feeAccount = payable(msg.sender);
        feePercent = _feePercent;
    }
}
