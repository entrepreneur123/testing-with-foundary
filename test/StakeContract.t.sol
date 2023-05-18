// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


import "../src/StakeContract.sol";
import "lib/forge-std/src/Test.sol";
import "../src/mock/MockERC20.sol";

contract StakeContactTest is Test {
   StakeContract public stakeContract;
   MockERC20 public token;
   uint256 public constant AMOUNT = 1e18;
   function setUp() public {
      stakeContract = new StakeContract();
      token = new MockERC20();
   }
   function testStakingTokens() public {
      token.approve(address(stakeContract), AMOUNT);
      bool success = stakeContract.stake(AMOUNT,address(token));
      assertTrue(success);
   }
//    function testExample() public {
//     assertTrue(true);
//    }
}
