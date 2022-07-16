{
  description = ''Cross-platform access to OS keychain'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."keyring-master".dir   = "master";
  inputs."keyring-master".owner = "nim-nix-pkgs";
  inputs."keyring-master".ref   = "master";
  inputs."keyring-master".repo  = "keyring";
  inputs."keyring-master".type  = "github";
  inputs."keyring-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."keyring-v0_1_0".dir   = "v0_1_0";
  inputs."keyring-v0_1_0".owner = "nim-nix-pkgs";
  inputs."keyring-v0_1_0".ref   = "master";
  inputs."keyring-v0_1_0".repo  = "keyring";
  inputs."keyring-v0_1_0".type  = "github";
  inputs."keyring-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."keyring-v0_1_1".dir   = "v0_1_1";
  inputs."keyring-v0_1_1".owner = "nim-nix-pkgs";
  inputs."keyring-v0_1_1".ref   = "master";
  inputs."keyring-v0_1_1".repo  = "keyring";
  inputs."keyring-v0_1_1".type  = "github";
  inputs."keyring-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."keyring-v0_2_0".dir   = "v0_2_0";
  inputs."keyring-v0_2_0".owner = "nim-nix-pkgs";
  inputs."keyring-v0_2_0".ref   = "master";
  inputs."keyring-v0_2_0".repo  = "keyring";
  inputs."keyring-v0_2_0".type  = "github";
  inputs."keyring-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."keyring-v0_2_1".dir   = "v0_2_1";
  inputs."keyring-v0_2_1".owner = "nim-nix-pkgs";
  inputs."keyring-v0_2_1".ref   = "master";
  inputs."keyring-v0_2_1".repo  = "keyring";
  inputs."keyring-v0_2_1".type  = "github";
  inputs."keyring-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."keyring-v0_2_2".dir   = "v0_2_2";
  inputs."keyring-v0_2_2".owner = "nim-nix-pkgs";
  inputs."keyring-v0_2_2".ref   = "master";
  inputs."keyring-v0_2_2".repo  = "keyring";
  inputs."keyring-v0_2_2".type  = "github";
  inputs."keyring-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."keyring-v0_3_0".dir   = "v0_3_0";
  inputs."keyring-v0_3_0".owner = "nim-nix-pkgs";
  inputs."keyring-v0_3_0".ref   = "master";
  inputs."keyring-v0_3_0".repo  = "keyring";
  inputs."keyring-v0_3_0".type  = "github";
  inputs."keyring-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."keyring-v0_3_1".dir   = "v0_3_1";
  inputs."keyring-v0_3_1".owner = "nim-nix-pkgs";
  inputs."keyring-v0_3_1".ref   = "master";
  inputs."keyring-v0_3_1".repo  = "keyring";
  inputs."keyring-v0_3_1".type  = "github";
  inputs."keyring-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keyring-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}