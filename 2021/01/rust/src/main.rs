use std::fs;

fn main() {
    let input_string = fs::read_to_string("./src/input.txt").expect("Something went wrong!");
    let depths: Vec<i32> = input_string
        .split("\n")
        .map(|depth_string| depth_string.parse::<i32>().unwrap())
        .collect();
    let mut increases = 0;
    let mut prev: Option<i32> = None;
    for depth in depths {
        if prev.is_some() {
            if prev.unwrap() < depth {
                increases += 1;
            }
        }
        prev = Some(depth);
    }
    println!("Answer: {}", increases);
}
