#!/bin/sh

ocamlbuild -pkg ctypes.foreign -lflags -cclib,-lbotan-2 botan.native
