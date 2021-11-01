module Span_count : sig
  type t = { dropped : int option; started : int } [@@deriving yojson_of]
end

type t = {
  duration : Duration.t;
  id : Id.Span_id.t;
  span_count : Span_count.t;
  trace_id : Id.Trace_id.t;
  type_ : string;
}
[@@deriving yojson_of]
