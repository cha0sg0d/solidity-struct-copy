# Solidity Mysteries

In this reproducible example, copying a struct directly from memory into storage gets a `Stack too deep` error in the compiler.

To see the problem, uncomment `// uint32 N;` [here](test/Config.t.sol#21). Then run `forge test`.

I am trying to understand _why_ this error occurs. My current guess is due to the way structs in memory are copied into storage in Solidity.

Please let me know if you have a different or more thorough explanation!

# Installation

- Install [Foundry](https://getfoundry.sh/)
