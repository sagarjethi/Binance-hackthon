<p align='center'>
	<img src="./img/dreloan.gif"/>
</p>

### DReloan

Microlending for disadvantaged entrepreneurs without access to credit.

## Inspiration

More than 1.7 billion people around the world are unbanked and can’t access the financial services they need. DReloan aims to address this by allowing charitable lenders with tools to get resources to those that need them the most and maximize the impact of a loan by automatically relending funds once they are repaid. With crowd sourced micro-loans, students can pay for tuition, women can start businesses, farmers are able to invest in equipment and families can afford needed emergency care. With all transactions taking place on the blockchain, lenders benefit from increased accountability and borrowers can establish credit.

## What it does

DReloan allows anyone with a Harmony wallet initiate a new loan. The lender selects one or more address of borrowers they wish to lend to and the amount they would like to lend. The funds are immediately transferred to the first account on the list and once repaid, they are transferred to the next until the end of the list is reached at which time the funds are returned to the lender. At any time the lender can add additional borrowers to the end of the list.

Anyone can query a list of borrower addresses as well as the number that have repaid a loan providing borrowers with records of their loan transactions.

## How we built it

DReloan comprises a smart contract on the Harmony mainnet and a web application. The web application is built using React.js and the smart contract is built using Solidity. A loan can be initiated on the DReloan smart contract using the lend function, which establishes a list of borrowers and funds the balance of the contract. The balance is immediately transferred to the first borrower. The repay function allows a borrower to repay the funds they were lent, and once the balance reaches the full amount lent, it is transferred to the next borrower.

We used the harmony-core and associated harmony javascript sdk's to facilitate the contract interaction from the DReloan web UI.

## Structure

<pre>
`application`: Client (website) for logging into a harmony wallet and sending a transaction . This project allows lending via the `lend` method of the `DReloan` smart contract. 
`contract`: Truffle migrations and DReloan harmony smart contract.
</pre>

## Accomplishments that we're proud of

We were successfully able to deploy a smart contract on the BSC TESTNET and interact with it through out web application using our own BSC accounts.

**DReloan deployed smart contract address**

testnet: 0x90171f41c63466cE31057a4C9bb5cE92D324089c

## What's next for DReloan

Next we plan to build a web application for borrowers to interact with our smart contracts to access their transaction records for the purpose of establishing credit history based off a wallet address. The smart contract already includes a means of accessing this information so we simply need to create a UI for querying the records.
