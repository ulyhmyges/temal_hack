// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

import {HackMeIfYouCan} from "./HackMeIfYouCan.sol";
contract MyContract {

    HackMeIfYouCan public hackContract;

    constructor(address contractAddress){
        hackContract = HackMeIfYouCan(payable(contractAddress));
    }

    function callAddPoint() public {
        hackContract.addPoint();
    }
}
