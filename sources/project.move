module MyModule::NFTEventTickets {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;
    use aptos_framework::event;

    struct Ticket has store, key {
        event_name: vector<u8>,
        price: u64,
        owner: address,
    }

    public fun mint_ticket(owner: &signer, event_name: vector<u8>, price: u64) {
        let ticket = Ticket {
            event_name,
            price,
            owner: signer::address_of(owner),
        };
        move_to(owner, ticket);
    }
    public fun transfer_ticket(sender: &signer, recipient: address) acquires Ticket {
        let ticket = borrow_global_mut<Ticket>(signer::address_of(sender));
        ticket.owner = recipient;
    }
}
