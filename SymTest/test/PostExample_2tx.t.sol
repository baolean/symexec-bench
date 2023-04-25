// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/PostExample_2tx.sol";

contract PostExampleTwoTest is Test {
    PostExample public example;

    function setUp() public {
        example = new PostExample();
        // example.setLive(true);
    }

    function testBackdoor(uint256 x) public {
        // (bool isLive, uint256 x)
        // example.setLive();
        example.backdoor(x);
    }

    function proveBackdoor(uint256 x) public {
        // (bool isLive, uint256 x)
        // example.setLive(isLive);
        example.backdoor(x);
    }
}
