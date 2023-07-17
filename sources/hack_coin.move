module hackathon::hack_coin {
    use std::option;
    use sui::coin::{Self, Coin};
    use sui::tx_context::{sender, TxContext};

    /// One Time Witness needs to be named after the module.
    struct HACK_COIN has drop {}

    /// OTW can only be created in the initializer and only once
    fun init(otw: HACK_COIN, ctx: &mut TxContext) {
        let (treasury, metadata) = coin::create_currency(
            // decimals, symbol, name, description, icon
            otw, 8, b"HACK", b"Hack Coin", b"Wormhole Hackathon Coin",
            option::none(), ctx
        );

        sui::transfer::public_freeze_object(metadata);
        sui::transfer::public_transfer(treasury, sender(ctx));
    }

    /// Transfer the Coin (not really necessary, added for demonstration)
    public fun transfer(coin: Coin<HACK_COIN>, receiver: address) {
        sui::transfer::public_transfer(coin, receiver);
    }
}



