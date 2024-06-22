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
            pkgs.git
            pkgs.vim
            pkgs.cowsay
            pkgs.lolcat
          ];

          LC_ALL="C.UTF-8";

          shellHook = ''
            ansible-galaxy install -r requirements.yml
            echo "${system}" | cowsay | lolcat
          '';
        };
  };
}
