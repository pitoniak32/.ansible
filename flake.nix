{
  description = "A very basic flake to install ansible";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    devShells.${system}.default = 
      pkgs.mkShell
        {
          buildInputs = [
            pkgs.ansible
            pkgs.vim
            pkgs.cowsay
            pkgs.lolcat
          ];

          shellHook = ''
            ansible-galaxy install -r requirements.yml
            echo "${system}" | cowsay | lolcat
          '';
        };
  };
}
