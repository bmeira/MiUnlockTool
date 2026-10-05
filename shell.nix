{ pkgs ? import <nixpkgs> {} }:

let
  pythonPackages = pkgs.python3Packages;

  migate = pythonPackages.buildPythonPackage {
    pname = "migate";
    version = "1.1.11";
    src = pkgs.fetchPypi {
      pname = "migate";
      version = "1.1.11";
      sha256 = "69b034aaf958fd7c1a5d6dcd2458ed1d33a79137dc5cc7bc6d6c7663a19a2c7e";
    };
    pyproject = true;
    build-system = [ pythonPackages.setuptools ];
    dependencies = [
      pythonPackages.requests
      pythonPackages.rich
      pythonPackages.qrcode
    ];
    doCheck = false;
  };

  miunlock = pythonPackages.buildPythonApplication {
    pname = "miunlock";
    version = "1.7.4";
    src = ./MiUnlockTool;
    pyproject = true;
    build-system = [ pythonPackages.setuptools ];
    dependencies = [
      migate
      pythonPackages.pyaes
    ];
    doCheck = false;
  };
in
pkgs.mkShell {
  packages = [
    miunlock
    pkgs.android-tools
  ];
}
