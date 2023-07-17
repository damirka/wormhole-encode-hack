module hackathon::abilities {
    use sui::object::UID; // ignore me

    /// Something that can be discarded
    struct IgnoreMe has drop {}

    /// Tend to spread, self reproduces
    struct Lies has copy {}

    /// Something that can be stored, like in a backpack
    struct Laptop has store {}

    /// Owned, stores a laptop
    struct Backpack has key { id: UID, laptop: Laptop }
}


