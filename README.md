# Flake Parts Template

This repository acts as a modular template using `flake-parts`.

## Structure

- `flake.nix`: The main entrypoint that initializes `flake-parts` and inputs.
- `nix/fmt.nix`: Configures `treefmt-nix` to handle project formatting (`nix fmt`).
- `nix/shells.nix`: Configures the local development environment (`nix develop`).
- `.github/workflows/check.yml`: CI workflow to validate the flake outputs.

## Formatting

Formatting is handled centrally by `treefmt-nix`. It is configured to target Nix files (`alejandra`) and Markdown files (`mdformat`).

To format your repository locally, simply run:

```bash
nix fmt
```

## Continuous Integration

The GitHub Action runs `nix flake check`. Because `treefmt-nix` is imported as a flake module, it automatically injects a derivation into `checks`. If any tracked `.nix` or `.md` file does not match the formatter's expected output, the CI pipeline will fail.
