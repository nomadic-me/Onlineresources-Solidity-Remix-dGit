pragma solidity ^0.5.0;

contract BankAccount {
    address payable accountOwner = 0xc3879B456DAA348a16B6524CBC558d2CC984722c;

    function withdraw(uint amount, address payable recipient) public {
        // Here the Require means that its cheaper than an IF Statement
        require(recipient == accountOwner, "You don’t own this account!");
        return recipient.transfer(amount);
    }
    // There is no logic because, if you make something payable 
    // and any value added to the contract ("like a deposit" to a contract)
    // So by having external  
    function deposit() public payable {}

    function() external payable {}
}

