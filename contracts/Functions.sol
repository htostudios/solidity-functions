// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Functions {
    address private owner;
    
    constructor() {
        owner = msg.sender;
    }

    // Functions example
    function addNumbers(uint256 num1, uint256 num2) public pure returns (uint256) {
        uint256 sum = num1 + num2;
        return sum;
    }


    // View functions example
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }


    // Pure functions example
    function multiply(uint256 num1, uint256 num2) public pure returns (uint256) {
        return num1 * num2;
    }


    // Fallback functions example
    fallback () external payable {
    // handle incoming ether transfer
    }


    // Math functions example
    function add(uint256 num1, uint256 num2) public pure returns (uint256) {
        return num1 + num2;
    }

    function divide(uint256 num1, uint256 num2) public pure returns (uint256) {
        require(num2 > 0, "division by zero");
        return num1 / num2;
    }

    function modulo(uint256 num1, uint256 num2) public pure returns (uint256) {
        require(num2 > 0, "division by zero");
        return num1 % num2;
    }


    // Modifier example
    modifier onlyOwner() {
        require(msg.sender == owner, "only contract owner can call this function");
        _;
    }

    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}