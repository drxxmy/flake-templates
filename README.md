# Nix Flake Templates ❄️

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A curated collection of opinionated Nix flake templates to bootstrap your projects.

## 🚀 Quick Start

### Prerequisites

- [Nix](https://nixos.org/download/) with [flakes enabled](https://nixos.wiki/wiki/Flakes)
- (Optional) [direnv](https://direnv.net/) for automatic environment loading

### Usage

```bash
# Initialize a new project with a template
nix flake init -t github:drxxmy/flake-templates#<template-name>
```

## 📦 Available Templates

### Web Development
| Template | Description | Command |
|----------|-------------|---------|
| **Vue** | Vue 3 + TypeScript + Vite  | `#vue` |

## 🔍 Detailed Examples

### Vue Template

```bash
# Create a new Vue project
nix flake init -t github:drxxmy/flake-templates#vue

# Enter development shell
nix develop

# Or with direnv (recommended)
direnv allow
```

### Create Your Own Template

1. Fork this repository
2. Add your template to the `templates/` directory
3. Export it in the main `flake.nix`
4. Submit a PR to share it with others!

## 🤝 Contributing

1. Fork the repository
2. Create a new template in `templates/<name>/`
3. Add documentation in `docs/templates/<name>.md`
4. Update the main `flake.nix` to export your template
5. Submit a pull request

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.
