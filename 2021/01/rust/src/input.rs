use std::fs;

pub fn read_input() -> Vec<i32> {
  let input_string = fs::read_to_string("./src/input.txt").expect("Something went wrong!");
  let depths: Vec<i32> = input_string
    .split("\n")
    .map(|depth_string| depth_string.parse::<i32>().unwrap())
    .collect();
  return depths;
}
