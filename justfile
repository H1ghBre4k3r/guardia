alias b := build
alias br := build-release
alias t := test
alias f := fmt

build:
    cargo build

build-release:
    cargo build --release

test:
    cargo test --workspace

bins:
    cargo build --bins

bins-release:
    cargo build --bins --release

watch:
    cargo watch -x "build --bins"

install:
    cargo install --path .

fmt:
    cargo fmt

check-fmt:
    cargo fmt --check

ci:
    cargo fmt && cargo clippy && cargo check && cargo test
