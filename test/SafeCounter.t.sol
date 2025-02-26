// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/SafeCounter.sol";

contract CounterTest is Test {
    SafeCounter public counter;

    function testIncrement() public {
        counter.increment();
        assertEq(counter.current(), 1);
    }

    function testDecrement() public {
        counter.decrement();
        assertEq(counter.current(), 0);
    }
}
