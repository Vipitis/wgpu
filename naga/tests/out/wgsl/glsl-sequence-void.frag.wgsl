fn reduce(x: ptr<function, f32>) -> bool {
    let _e1 = (*x);
    (*x) = (_e1 - 0.1f);
    return true;
}

fn main_1() {
    var a: f32 = 1f;
    var b: f32 = 2f;
    var c: f32 = 3f;

    let _e6 = reduce((&a));
    let _e7 = reduce((&b));
    c = 0.5f;
    let _e9 = reduce((&a));
    let _e10 = reduce((&b));
    let _e11 = reduce((&c));
    return;
}

@fragment 
fn main() {
    main_1();
    return;
}
