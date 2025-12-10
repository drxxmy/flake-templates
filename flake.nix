{
  description = "A collection of project templates";

  outputs =
    { ... }:
    {
      templates = {
        vue = {
          path = ./vue;
          description = "A basic Vue.JS flake";
        };
      };
    };
}
