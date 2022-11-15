// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "ds-test/test.sol";

struct GameConfig {
    uint32 A;
    uint32 B;
    uint32 C;
    uint32 D;
    uint32 E;
    uint32 F;
    uint32 G;
    uint32 H;
    uint32 I;
    uint32 J;
    uint32 K;
    uint32 L;
    uint32 M;
    // If N is uncommented, the compiler will fail with a stack too deep error
    // uint32 N;
}

contract ConfigTest is DSTest {
    GameConfig public config;
    uint256 public b;

    function testConfig() public {
        // Copying struct from storage to memory causes stack too deep error.
        // Works when GameConfig has 12 members, but not 13
        GameConfig memory a;
        config = a;
    }

    function testUint() public {
        b = 1;
    }
}
