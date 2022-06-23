//SPDX-License-Identifier:MIT

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

pragma solidity ^0.8.4;

contract NFT is ERC721URIStorage {
    uint256 public tokenCount;

    constructor() ERC721("MarketplaceNFT", "NFT") {}

    function mint(string memory _tokenURI) external returns (uint256) {
        tokenCount++;
        _mint(msg.sender, tokenCount);
        _setTokenURI(tokenCount, _tokenURI);
        return (tokenCount);
    }
}
