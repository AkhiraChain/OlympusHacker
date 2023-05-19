pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/OlympusTreasury.sol";

contract OlymusTreasuryScript is Script {
    OlympusTreasury public oly;
    function setUp() public {

        address OHM = 0x383518188C0C6d7730D91b2c03a03C837814a899; // 0x383518188C0C6d7730D91b2c03a03C837814a899
        address DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F; // https://etherscan.io/address/0x6b175474e89094c44da98b954eedeac495271d0f
        address OHMDAI = 0x34d7d7Aaf50AD4944B70B320aCB24C95fa2def7c; // https://etherscan.io/address/0x34d7d7aaf50ad4944b70b320acb24c95fa2def7c
        uint blockzNeeded = 10;
        oly = new OlympusTreasury(
            OHM,
            DAI,
            OHMDAI,
            blockzNeeded
        );
    }

    function test_deposit(uint x, address t, uint p) public {
        console.log("test Deposit");
        x = 1000000000000000000;
        t = 0x6982508145454Ce325dDbE47a25d4ec3d2311933; // PEPE token
        p = 1000000000000000000;
        oly.deposit(x, t, p);
    //    assertTrue(success)
    }

    function test_incure_debt(uint x, address t) public {
        console.log("test_incure_debt ");
        oly.incurDebt(x, t);
    }
}