# Elm Boilerplate ![ci status](https://github.com/mthadley/elm-bp/workflows/CI/badge.svg?branch=master)

My own minimal boiler plate for small [Elm](http://elm-lang.org) projects. Clone
the repo or click "Use this template" in Github to get started.

# Setup

You'll need to make sure you have [`nix`](https://nixos.org/nix/) installed
first.

From there, you can run `nix-shell` to enter a shell with all of this project's
dependencies ready. However, it's highly recommended to use [`direnv`](https://direnv.net/)
which will essentially do this for you every time you enter the repo's folder
in your shell.

# Development

Building the project is handled by `make`. Run the following to watch for
changes and recompile:

```shell
$ make watch
```
