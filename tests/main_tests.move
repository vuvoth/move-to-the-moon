module mystem::tests {
    use mystem::main::{Car, Factory, create_car, create_factory, car_number};
    use dwallet::test_scenario::{next_tx, Self}; 
    use dwallet::test_utils;


    #[test]
    fun object_wrapper_test() {
        let sender = @0x007;
        let minder = @0x008;
        let scenario = test_scenario::begin(sender);
            let ctx = test_scenario::ctx(&mut scenario);
            let car = create_car(ctx);


        let factory = create_factory(car, ctx);

                let num = car_number(&car);

        test_utils::destroy(factory);


        test_scenario::end(scenario);

    }
}