{
  description = "Vue.js development template";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    devshell.url = "github:numtide/devshell";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        inputs.devshell.flakeModule
      ];
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];
      perSystem =
        {
          config,
          self',
          inputs',
          pkgs,
          system,
          ...
        }:
        {
          devshells.default = {
            devshell = {
              name = "vue-development";
            };
            commands = [
              {
                package = "pnpm";
                category = "package-manager";
              }
              {
                package = "nodejs";
                category = "runtime";
              }
              {
                package = "vtsls";
                category = "lsp";
              }
              {
                package = "vue-language-server";
                category = "lsp";
              }
            ];
            serviceGroups = {
              dev = {
                services = {
                  webserver = {
                    command = "pnpm run dev";
                  };
                };
              };
            };
          };
        };
    };
}
