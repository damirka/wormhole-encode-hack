module hackathon::nft {
    use sui::tx_context::TxContext;
    use sui::object::{Self, UID};
    use sui::url::Url;

    /// Is that it?
    struct NFT has key { id: UID, image_url: Url }

    /// Mint a new NFT, just that easy
    public fun mint(image_url: Url, ctx: &mut TxContext): NFT {
        NFT {
            id: object::new(ctx),
            image_url
        }
    }
}
