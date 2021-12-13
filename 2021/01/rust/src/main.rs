mod input;
mod part1;
mod part2;

fn main() {
    let input = input::read_input();
    let answer_1 = part1::run(&input);
    println!("Answer part 1: {}", answer_1);
    let answer_2 = part2::run(&input);
    println!("Answer part 2: {}", answer_2);
}
