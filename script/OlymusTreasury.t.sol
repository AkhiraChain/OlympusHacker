pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/OlympusTreasury.sol";

contract OlymusTreasuryScript is Script {
    OlympusTreasury public oly;
    function setUp() public {}

    function test_deposit(uint x, address t, uint p) public {
        
        oly.deposit(x, t, p);
    //    assertTrue(success)
    }
}