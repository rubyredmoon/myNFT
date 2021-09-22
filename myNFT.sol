//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol";

contract myNFT is ERC721URIStorage {
    
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIDs;
    
    constructor () ERC721 ("MyNFT", "ABC") {}
       
       function CreateNFT(address owner, string memory tokenURI) public returns (uint256) {
           
           _tokenIDs.increment();
           
           uint256 newID = _tokenIDs.current();
           _mint(owner, newID);
           _setTokenURI(newID, tokenURI);
           
           return newID;
       
   }
   
}
