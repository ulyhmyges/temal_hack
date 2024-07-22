## HackMeIfYouCan CTF

### 7 methods

## flip() method
La variable 'side' dans l'implémentation de la méthode est toujours égale à false.
Il faut effectuer 10 appels de la méthode avec la contrainte de changer de block.number à chaque nouvel appel.

## addPoint() method
You need to call this method indirectly.
I created another contract "MyContract" that calls the addPoint() method
through the method MyContract.callAddPoint().

## receive() method
Add 1 wei of contribution by calling contribute() method
    `contract.contribute{value: 1 wei}();``

Send Ether to the contract will trigger the receive() method
    `address(contract).call{value: 1 wei}("");`

## sendPassword() method

## sendKey() method


Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.



## Usage of Foundry

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
