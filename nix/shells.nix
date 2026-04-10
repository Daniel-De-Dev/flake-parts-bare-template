{ ... }:
{
  perSystem =
    { pkgs, ... }:
    {
      devShells.default = pkgs.mkShell {
        packages = with pkgs; [
        ];

        shellHook = ''
          echo "Remember to define needed packages and also shell commands to execute to setup environment"
        '';
      };
    };
}
