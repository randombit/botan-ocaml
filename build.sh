#!/bin/sh

ocamlbuild -pkg ctypes.foreign -lflags -cclib,-L/usr/local/lib -lflags -cclib,-lbotan-1.11 botan.native
