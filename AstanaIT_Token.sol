// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AstanaIT_SE2319_Token is ERC20 {
    struct Transaction {
        address sender;
        address receiver;
        uint256 amount;
        uint256 timestamp;
    }

    Transaction[] public transactions;

    constructor() ERC20("AstanaIT_SE2319_Token", "AIT2319") {
        _mint(msg.sender, 2000 * 10 ** decimals());
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        bool success = super.transfer(recipient, amount);
        if (success) {
            transactions.push(Transaction(msg.sender, recipient, amount, block.timestamp));
        }
        return success;
    }

    function getLatestTransactionTimestamp() public view returns (uint256) {
        require(transactions.length > 0, "No transactions found");
        return transactions[transactions.length - 1].timestamp;
    }

    function getLatestTransactionSender() public view returns (address) {
        require(transactions.length > 0, "No transactions found");
        return transactions[transactions.length - 1].sender;
    }

    function getLatestTransactionReceiver() public view returns (address) {
        require(transactions.length > 0, "No transactions found");
        return transactions[transactions.length - 1].receiver;
    }
}
