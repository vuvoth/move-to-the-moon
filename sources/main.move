module moon::add;

public fun add(x: u64) : u32 {
    let mut b;
    if (x & 1 == 0) {
	b = 1;
    } else {
	b = 2;
    };

    if(x & 2 == 0) {
	b = 3;
    };
    b
}

#[test]
fun test_add() {
    assert!(add(1) == 3);
}
