pub fn run(input: &Vec<i32>) -> i32 {
  let mut increases = 0;
  let mut prev: Option<i32> = None;
  let mut i = 0;
  for depth in input {
    if i >= 2 {
      let current = depth + input[i - 1] + input[i - 2];
      if prev.is_some() {
        if prev.unwrap() < current {
          increases += 1;
        }
      }
      prev = Some(current);
    }
    i += 1;
  }
  return increases;
}
