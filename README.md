# NFT-Event-Tickets-on-Apto
Overview
NFT Event Tickets is a Move module built on the Aptos blockchain, allowing users to mint event tickets as NFTs. Each ticket is uniquely associated with an event name, a price, and an owner’s address.

Features
Mint event tickets as NFTs.
Assign ownership of tickets to a specific address.
Store ticket details such as event name and price.
Prerequisites
Install Aptos CLI and set up a local Aptos devnet/testnet environment.
Ensure you have Move language support and dependencies installed.
Module Structure
Ticket Struct
move
Copy
Edit
struct Ticket has store, key {
    event_name: vector<u8>,
    price: u64,
    owner: address,
}
event_name: Name of the event in bytes (vector<u8>).
price: Ticket price in Aptos coins (u64).
owner: Address of the ticket holder.
Functions
mint_ticket
move
Copy
Edit
public fun mint_ticket(owner: &signer, event_name: vector<u8>, price: u64)
Purpose: Mints a new NFT ticket.
Parameters:
owner: Signer reference of the caller (ticket creator).
event_name: Name of the event.
price: Price of the ticket.
Functionality:
Creates a Ticket instance.
Assigns the ownership to the caller’s address.
Stores the ticket under the owner’s account.
Installation & Deployment
1. Clone the Project
sh
Copy
Edit
git clone <repository-url>
cd NFTEventTickets
2. Compile the Move Module
sh
Copy
Edit
aptos move compile
3. Deploy to Testnet
sh
Copy
Edit
aptos move publish --profile testnet
4. Interact with the Contract
Mint a new ticket using the Aptos CLI:

sh
Copy
Edit
aptos move run --function-id <your_address>::NFTEventTickets::mint_ticket \
  --args string:"Concert Event" u64:1000
Future Enhancements
Transfer Tickets: Allow ticket transfers between users.
Event Logs: Record ticket ownership changes.
Ticket Resale Marketplace: Enable secondary sales and ownership verification.
