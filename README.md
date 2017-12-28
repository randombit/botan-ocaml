# botan-ocaml

This is an OCaml binding for the Botan cryptography library
https://github.com/randombit/botan.git

This uses Botan's C API and the OCaml ctypes library. Currently Botan's C API
only exposes a small part of the library API, and this OCaml wrapper only wraps
a small part of the C API. Check the `mli` file for a sense of what is included.

Patches welcome!

Released under the Simplified BSD license (same as Botan library itself).
