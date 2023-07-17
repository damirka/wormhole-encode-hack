module hackathon::metro {
    /// A multi-use ticket for the metro
    struct Pass { uses: u8 }

    /// Buy at the ticket machine
    public fun buy(/* pass Coin */): Pass { Pass { uses: 10 } }

    /// Show to the ticket inspector
    public fun show(pass: &Pass): u8 { pass.uses }

    /// Use to open the gate
    public fun use_pass(pass: &mut Pass) { pass.uses = pass.uses - 1 }

    /// Recycle at the ticket machine
    public fun recycle(pass: Pass) { Pass { uses: _ } = pass }
}
