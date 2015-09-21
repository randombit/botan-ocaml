(*
* OCaml binding for botan (http://botan.randombit.net)
* (C) 2015 Jack Lloyd
*
* 
*)


module Botan : sig
  val version : (int * int * int)
  val version_string : string
  val version_date : int
  val ffi_version : int

  val hex_encode : string -> string

  module RNG : sig
    type t
    val create : string -> t
    val destroy: t -> unit (* TODO: GC finalize instead *)
    val generate : t -> int -> string
    val reseed : t -> int -> unit
  end

  val bcrypt : string -> RNG.t -> int -> string
  val check_bcrypt : string -> string -> bool

  module Hash : sig
    type t
    val create : string -> t
    val destroy: t -> unit (* TODO: GC finalize instead *)
    val output_length : t -> int
    val clear : t -> unit
    val update : t -> string -> unit
    val final: t -> string
  end

end
