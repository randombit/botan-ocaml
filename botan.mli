(*
 * OCaml binding for botan (https://botan.randombit.net)
 * (C) 2015,2017 Jack Lloyd
 *
 *)

module Botan : sig
  val version : (int * int * int)
  val version_string : string
  val version_date : int
  val ffi_version : int

  val hex_encode : string -> string
  val hex_decode : string -> string

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
    val clear : t -> unit
    val output_length : t -> int
    val update : t -> string -> unit
    val final: t -> string
  end

  module MAC : sig
    type t
    val create : string -> t
    val destroy: t -> unit (* TODO: GC finalize instead *)
    val clear : t -> unit
    val output_length : t -> int
    val set_key : t -> string -> unit
    val update : t -> string -> unit
    val final: t -> string
  end

  module BlockCipher : sig
    type t
    val create : string -> t
    val destroy: t -> unit (* TODO: GC finalize instead *)
    val clear : t -> unit
    val block_size : t -> int
    val set_key : t -> string -> unit
    val encrypt : t -> string -> string
  end



end
