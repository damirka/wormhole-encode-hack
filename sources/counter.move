module hackathon::shared_counter {
    use sui::object::{Self, UID, ID};
    use sui::tx_context::TxContext;
    use sui::transfer;

    /// Abort code for when the caller is not the owner of the `Counter`.
    const ENotOwner: u64 = 0;

    /// A Capability object which allows the holder to reset the `Counter`.
    /// Has `store` -> freely transferable and "wrappable".
    struct CounterManagerCap has key, store {
        id: UID,
        counter_id: ID
    }

    /// A shared counter object, stores a u64 value
    struct Counter has key { id: UID, value: u64 }

    /// Create and share a `Counter` object and create a matching Cap
    public fun new(ctx: &mut TxContext): CounterManagerCap {
        let counter = Counter { id: object::new(ctx), value: 0 };
        let counter_id = object::id(&counter);

        transfer::share_object(counter);

        CounterManagerCap { id: object::new(ctx), counter_id }
    }

    /// Increment the counter by 1. Anyone can call this function.
    public fun increment(counter: &mut Counter) {
        counter.value = counter.value + 1;
    }

    /// Reset the counter to 0.
    /// Can only be called by a `CounterManagerCap` owner.
    public fun reset(counter: &mut Counter, cap: &CounterManagerCap) {
        assert!(cap.counter_id == object::id(counter), ENotOwner);
        counter.value = 0;
    }
}
