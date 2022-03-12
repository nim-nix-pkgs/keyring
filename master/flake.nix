{
  description = ''Cross-platform access to OS keychain'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-keyring-master.flake = false;
  inputs.src-keyring-master.owner = "iffy";
  inputs.src-keyring-master.ref   = "refs/heads/master";
  inputs.src-keyring-master.repo  = "nim-keyring";
  inputs.src-keyring-master.type  = "github";
  
  inputs."dbus".dir   = "nimpkgs/d/dbus";
  inputs."dbus".owner = "riinr";
  inputs."dbus".ref   = "flake-pinning";
  inputs."dbus".repo  = "flake-nimble";
  inputs."dbus".type  = "github";
  inputs."dbus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-keyring-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-keyring-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}