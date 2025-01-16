# AstanaIT_SE2319_Token

## Description
This repository contains an ERC-20 token implementation for the Astana IT University group SE2319. The token is built using Solidity and includes standard ERC-20 functionality.

## Features
- Total supply: 2000 tokens
- Functions for transaction information retrieval:
  - Latest block timestamp
  - Sender and receiver addresses

## Usage
1. Deploy the contract on a testnet (e.g., Goerli, Sepolia).
2. Interact with the token using MetaMask or Remix IDE.

## Examples
- Approve 100 tokens for spending:
  ```solidity
  approve("0xSpenderAddress", 100);
