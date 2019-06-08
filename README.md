# About

Example compiler starter project using Menhir for parsing and the Dune build system.

The compiler example is adapted from [https://github.com/derdon/menhir-example](https://github.com/derdon/menhir-example)


# Setup

### Setup opam switch

`opam switch create . 4.07.0 --deps-only && eval $(opam env)`

### Install dependencies

`opam install . --deps-only`


### Running the example compiler

`dune exec bin/main.exe`

The compiler understands arithmetic expressions ending in semicolons, read in through `STDIN`.

For example:

`echo "3;4*(2+8);3-4;" | dune exec bin/main.exe`


### Getting started

Be sure to modify `compiler-example.opam` with your project details.




