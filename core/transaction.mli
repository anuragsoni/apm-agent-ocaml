module Span_count : sig
  type t = {
    dropped : int option;
    started : int;
  }
  [@@deriving yojson_of]

  val make : ?dropped:int -> int -> t
end

type t = {
  duration : Duration.t;
  id : Id.Span_id.t;
  span_count : Span_count.t;
  trace_id : Id.Trace_id.t;
  parent_id : Id.Span_id.t option;
  type_ : string;
  name : string;
}
[@@deriving yojson_of]

val make :
  ?parent_id:Id.Span_id.t ->
  duration:Duration.t ->
  id:Id.Span_id.t ->
  span_count:Span_count.t ->
  trace_id:Id.Trace_id.t ->
  kind:string ->
  string ->
  t
