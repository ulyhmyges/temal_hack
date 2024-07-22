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

    //    console.log("nb: ",(block.number / 6275657625726723324896521676682367236752985978263786257989175917));
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
        
        // myContract.callAddPoint();
        
        console.log("getMarks: ", hackContract.getMarks(wallet));

        
        // transfer() method
        console.log("============================== transfer() method ==============================");
      
        // console.log(hackContract.balanceOf(wallet));
        // //hackContract.transfer{from: wallet}(wallet, 1000000000000000);
        // //address(hackContract).transfer{value: 1000000000000000 wei}(wallet);
        // console.log("balanceof: ", hackContract.balanceOf(wallet));
        // console.log(msg.sender);
        // console.log("wallet: ", wallet);
        // console.log(hackContract.balanceOf(wallet) - 20);
        // console.log("getMarks: ", hackContract.getMarks(wallet));
        
        //console.log("getMarks: ", hackContract.getMarks(wallet));

        // receive() method
        //console.log("============================== receive() method ==============================");
        
        // hackContract.contribute{value: 1 wei}();
        // console.log("getContribute: ", hackContract.getContribution());
        // (bool ok, ) = address(hackContract).call{value: 1 wei}("");
        // require(ok, "Call failed!");
        
        //console.log("getMarks: ", hackContract.getMarks(wallet));



        vm.stopBroadcast();
    }
}
