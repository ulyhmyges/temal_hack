// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

import {Script, console} from "forge-std/Script.sol";
import {HackMeIfYouCan} from "../src/HackMeIfYouCan.sol";
import {MyContract} from "../src/MyContract.sol";

contract HackMeIfYouCanScript is Script 
{
    HackMeIfYouCan public hackContract;
    bytes32 public password;
    bytes32[15] public data;
    address public wallet;

    MyContract public myContract;
    function setUp() public {
        hackContract = new HackMeIfYouCan(password, data);
        wallet = address(vm.envUint("WA"));
    }

    function run() public {
        vm.startBroadcast(vm.envUint("PK"));
        myContract = new MyContract(address(hackContract));

        // flip method
        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));
        
        vm.roll(block.number + 1);
        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));

        vm.roll(block.number + 1);
        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));
              
        vm.roll(block.number + 1);
        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));
        
        vm.roll(block.number + 1);
        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));
              
        vm.roll(block.number + 1);
        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));
        
        vm.roll(block.number + 1);
        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));
        
        vm.roll(block.number + 1);
        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));

        vm.roll(block.number + 1);
        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));

        vm.roll(block.number + 1);
        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));

        console.log("getMarks: ", hackContract.getMarks(wallet));

        // addPoint method
        console.log("============================== addPoint() method ==============================");
        myContract.callAddPoint();
        console.log("getMarks: ", hackContract.getMarks(wallet));

        
        // method
        console.log("============================== addPoint() method ==============================");
        
        console.log("getMarks: ", hackContract.getMarks(wallet));



        vm.stopBroadcast();
    }
}
