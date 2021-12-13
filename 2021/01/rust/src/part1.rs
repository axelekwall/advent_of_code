pub fn run(input: &Vec<i32>) -> i32 {
  let mut increases = 0;
  let mut prev: Option<&i32> = None;
  for depth in input {
    if prev.is_some() {
      if prev.unwrap() < depth {
        increases += 1;
      }
    }
    prev = Some(depth);
  }
  return increases;
}
