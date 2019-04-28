fn beep() -> &'static str {
    return "Beep boop!";
}

fn main() {
    let robot_output = beep();
    println!("{}", robot_output);
    beep();
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_should_go_beep_boop() {
        let robot_output = beep();
        assert_eq!(robot_output, "Beep boop!");
    }
}