// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/NFT.sol";

// run with forge script script/NFT.s.sol:MyScript --rpc-url $GOERLI_RPC_URL --broadcast --verify -vvvv
// didn't verify
// forge verify-contract 0x6e52436b1bba1feca4cd0d4d19f8895d127793f1 NFT --watch --chain-id 5 --constructor-args $(cast abi-encode "constructor(string,string,string)" "NFT_tutorial" "TUT" "baseURI")
// didn't verify either

contract MyScript is Script {
  function run() external {
    // other wallet options: https://book.getfoundry.sh/reference/forge/forge-script.html#wallet-options---raw
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
    vm.startBroadcast(deployerPrivateKey);

    NFT nft = new NFT("NFT_tutorial", "TUT", "baseUri");

    vm.stopBroadcast();
  }
}
