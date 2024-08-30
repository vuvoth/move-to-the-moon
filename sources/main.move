module mystem::main {
    use dwallet::object::{Self, UID};
    use dwallet::tx_context::TxContext;
    struct Car has key, store{
        id: UID
    }

    struct Factory has key{
        id: UID, 
        simple_car: Car
    }

    public fun create_car(ctx: &mut TxContext): Car {
        Car {
            id : object::new(ctx)
        }
    }

    public fun create_factory(car: Car, ctx: &mut TxContext): Factory {
        Factory {
            id: object::new(ctx), 
            simple_car: car
        }
    }

    public fun car_number(car: &Car): u64 {
        1000
    }
}
