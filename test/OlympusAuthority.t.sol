pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/OlympusAuthority.sol";

contract OlympusAuthorityScript is Script {
    OlympusAuthority oA;
    address fakeGovernor = 0x383518188C0C6d7730D91b2c03a03C837814a899;
    address fakeGuardian = 0x383518188C0C6d7730D91b2c03a03C837814a899;
    address fakePolicy = 0x383518188C0C6d7730D91b2c03a03C837814a899;
    address fakeVault = 0x383518188C0C6d7730D91b2c03a03C837814a899;
    function setUp() public {
        oA = new OlympusAuthority(
            fakeGovernor,
            fakeGuardian,
            fakePolicy,
            fakeVault
        );
        
        address gov = oA.governor();
        vm.assume(gov != address(0));
    }
}