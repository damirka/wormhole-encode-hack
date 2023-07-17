#[test_only]
module hackathon::metro_tests {
    use hackathon::metro;

    #[test]
    fun test_metro() {
        let pass = metro::buy();

        assert!(metro::show(&pass) == 10, 0);

        metro::use_pass(&mut pass);
        assert!(metro::show(&pass) == 9, 0);

        metro::recycle(pass);
    }
}


