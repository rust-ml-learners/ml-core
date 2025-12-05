#!/bin/bash
# fix-structure.sh

# Create Cargo.toml for each crate
for crate in autodiff-core text-primitives embedding-core \
             rnn-primitives lstm-primitives attention-primitives \
             linear-layers optimizer-core nn-framework; do
    cat > crates/$crate/Cargo.toml << EOF
[package]
name = "$crate"
version = "0.1.0"
edition = "2021"
license = "MIT OR Apache-2.0"
description = "$crate - Educational ML primitive"

[dependencies]

[lib]
name = "${crate//-/_}"
path = "src/lib.rs"
EOF
    
    # Create minimal src/lib.rs
    mkdir -p crates/$crate/src
    cat > crates/$crate/src/lib.rs << EOF
//! $crate - Educational ML primitive

pub fn hello() -> &'static str {
    "Hello from $crate!"
}
EOF
done

# Create Cargo.toml for frameworks
for framework in mini-torch rusty-llm; do
    cat > frameworks/$framework/Cargo.toml << EOF
[package]
name = "$framework"
version = "0.1.0"
edition = "2021"
license = "MIT OR Apache-2.0"
description = "$framework - Framework built from primitives"

[dependencies]

[[bin]]
name = "$framework"
path = "src/main.rs"
EOF
    
    mkdir -p frameworks/$framework/src
    cat > frameworks/$framework/src/main.rs << EOF
fn main() {
    println!("Hello from $framework!");
}
EOF
done

# Create Cargo.toml for examples
for example in standalone-tensor text-classifier char-rnn mini-transformer; do
    cat > examples/$example/Cargo.toml << EOF
[package]
name = "$example"
version = "0.1.0"
edition = "2021"
license = "MIT OR Apache-2.0"
description = "Example: $example"

[dependencies]

[[bin]]
name = "$example"
path = "src/main.rs"
EOF
    
    mkdir -p examples/$example/src
    cat > examples/$example/src/main.rs << EOF
fn main() {
    println!("Running example: $example");
}
EOF
done

echo "Structure fixed! Now run: cargo build --workspace"