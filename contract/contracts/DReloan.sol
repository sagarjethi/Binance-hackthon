pragma solidity >=0.4.21 <0.6.0;

contract DReloan {
    address payable public lender;
    address payable[] public borrowers;
    uint public amount;
    uint public index;
    
    constructor() public {
        lender = msg.sender;
    }

    function lend(address payable[] memory initialBorrowers) public payable restricted {
        require(msg.value > .0001 ether);
        borrowers = initialBorrowers;
        amount = msg.value;
        index = 0;
        if (borrowers.length > index) {
            borrowers[index].transfer(address(this).balance);
        }
    }

    function repay() public {
        if (address(this).balance > amount) {
            if (index <= borrowers.length - 1) {
                index++;
                borrowers[index].transfer(address(this).balance);
            } else {
                lender.transfer(address(this).balance);
            }
        }
    }

    function addBorrower(address payable borrower) public restricted {
        borrowers.push(borrower);
    }
   
    function getBorrowers() public view returns(address payable[] memory) {
        return borrowers;
    }

    function getAmount() public view returns(uint) {
        return amount;
    }

    function getIndex() public view returns(uint) {
        return index;
    }
    
    modifier restricted() {
        require(msg.sender == lender);
        _;
    }
}