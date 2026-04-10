{ ... }:
{
  perSystem =
    { ... }:
    {
      # treefmt-nix configuration
      treefmt.config = {
        projectRootFile = "flake.nix";

        programs.nixfmt.enable = true; # Nix
        programs.mdformat.enable = true; # Markdown
      };
    };
}
