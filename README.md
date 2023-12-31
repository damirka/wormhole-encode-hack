# Wormhole Hackathon Cheatsheet

This repository contains samples used in slides as well as some tips on the sui
installation steps and documentation.

## Install

- requires Rust

```
cargo install --locked --git https://github.com/MystenLabs/sui.git --branch testnet sui
```

For troubleshooting visit: https://docs.sui.io/build/install

## Run

`sui move` is the way to go

```
# to build the code
sui move build

# to run tests
sui move test
```

## Links

- [Sui Move by Example](https://examples.sui.io/)
- [Mysten Apps](https://github.com/MystenLabs/apps)
- [Sui Docs](https://docs.sui.io/)
- [Move Language Reference](https://move-language.github.io/move/)
- [Move Book](https://move-book.com/)
- [A CLI application using Sui](https://github.com/MystenLabs/sui/tree/main/dapps/kiosk-cli)
