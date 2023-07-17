module hackathon::sandwich {
    struct Ham {}
    struct Bread {}
    struct Coffee {}

    /// Composable by definition
    struct Sandwich { bread: Bread, ham: Ham }

    /// One thing most developers agree on
    public fun brew_coffee(): Coffee { Coffee {} }

    /// Combine Ham and Ham to make a delicious sandwich!
    public fun make_sandwich(bread: Bread, ham: Ham): Sandwich {
        Sandwich { ham, bread }
    }

    /// Fill your belly with joy
    public fun enjoy_life(sandwich: Sandwich, coffee: Coffee) {
        let Sandwich { bread, ham } = sandwich;
        let Coffee { } = coffee;
        let Bread { } = bread;
        let Ham { } = ham;
    }
}
