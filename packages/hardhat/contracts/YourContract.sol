//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

// Useful for debugging. Remove when deploying to a live network.
import "hardhat/console.sol";

import "@openzeppelin/contracts/finance/VestingWallet.sol";

// Use openzeppelin to inherit battle-tested implementations (ERC20, ERC721, etc)
// import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * 
 * It also allows the owner to withdraw the Ether in the contract
 * @author BuidlGuidl
 */
contract YourContract is VestingWallet {
	// State Variables



    constructor(
        address beneficiary, 
        uint64 startTimestamp, 
        uint64 durationSeconds
    ) VestingWallet(beneficiary, startTimestamp, durationSeconds) {
		// console.log(owner);

	}


	// Function to check the releasable amount of native tokens
    function checkReleasable() external view returns (uint256) {
        return releasable();
    }






	
	function withdraw() public onlyOwner() {
		
		// Using console.log for debugging purposes
        console.log("Owner: %s", owner());


		// (bool success, ) = owner.call{ value: address(this).balance }("");
		// require(success, "Failed to send Ether");
	}

}
