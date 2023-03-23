// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.7.6;

contract PostExample {
    // https://github.com/foundry-rs/foundry/issues/2851
    function backdoor(uint256 x) external pure {
        uint256 number = 99;
        uint256 z = x - 1;
        if (z == 6912213124124531) {
            number = 0;
        } else {
            number = 1;
        }

        assert(number != 0);
    }
}
