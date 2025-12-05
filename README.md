# Rust ML Primitives 🦀🧠

A collection of foundational machine learning primitives implemented from scratch in Rust.

## 🎯 Philosophy

Each primitive:
- **Does one thing well** (UNIX philosophy)
- **Can be used standalone** or composed with others
- **Is well-documented** with examples
- **Focuses on educational clarity** while being performant

## 📦 Primitives

### Foundational (Level 1)
| Crate | Status | Description |
|-------|--------|-------------|
| [`tensor-core`](./crates/tensor-core) | 🔨 In Progress | Basic tensor operations |
| [`autodiff-core`](./crates/autodiff-core) | 📝 Planned | Automatic differentiation |
| [`text-primitives`](./crates/text-primitives) | 📝 Planned | Tokenizers, vocabularies |
| [`embedding-core`](./crates/embedding-core) | 📝 Planned | Embedding layers |

### Neural Components (Level 2)
| Crate | Status | Description |
|-------|--------|-------------|
| [`rnn-primitives`](./crates/rnn-primitives) | 📝 Planned | RNN cells and layers |
| [`lstm-primitives`](./crates/lstm-primitives) | 📝 Planned | LSTM with gating |
| [`attention-primitives`](./crates/attention-primitives) | 📝 Planned | Attention mechanisms |
| [`linear-layers`](./crates/linear-layers) | 📝 Planned | Dense/linear layers |

### Training (Level 3)
| Crate | Status | Description |
|-------|--------|-------------|
| [`optimizer-core`](./crates/optimizer-core) | 📝 Planned | SGD, Adam, optimizers |
| [`nn-framework`](./crates/nn-framework) | 📝 Planned | Neural network framework |

## 🏗️ Example Frameworks

- [`mini-torch`](./frameworks/mini-torch): PyTorch-like API using our primitives
- [`rusty-llm`](./frameworks/rusty-llm): Minimal LLM implementation

## 🚀 Getting Started

### Using a Single Primitive
```toml
# In your Cargo.toml
[dependencies]
tensor-core = "0.1"

## Build and test

```sh
# Clone the repository
git clone https://github.com/rust-ml-learners/rust-ml-primitives
cd rust-ml-primitives

# Build everything
cargo build --workspace

# Build specific crate
cargo build -p tensor-core

# Run tests
cargo test --workspace

# Run benchmarks
cargo bench --workspace
```