(*
......................................................................
Exercise 9: Define a function zip, that takes two int lists and
returns a list of pairs of ints, one from each of the two argument
lists. In case of mismatched list lengths, your function can just
raise an error.  For example, zip [1;2;3] [4;5;6] should evaluate to
[(1, 4); (2, 5); (3, 6)].

To think about: Why wouldn't it be possible, in cases of mismatched
length lists, to just pad the shorter list with, say, false values, so
that, zip [1] [2; 3; 4] = [(1, 2); (false, 3); (false, 4)]?
......................................................................
*)

let rec zip (x : int list) (y : int list) : (int * int) list =
  match x, y with
  | [], [] -> []
  | xhd :: xtl, yhd :: ytl -> (xhd, yhd) :: (zip xtl ytl) 
  | _, _ -> raise (Invalid_argument "zip mismatched length lists") ;;

(* Note: Try answering the question in the problem definition. *)

(*
......................................................................
Exercise 11: Reimplement sum using fold_left, naming it sum_ho (for
"higher order").
......................................................................
*)

let sum_ho : int list -> int =
  List.fold_left (+) 0 ;;

(** Note: fold is incredibly useful, so do try to get as comfortable with it 
as you can *)

(*
......................................................................
Exercise 13: The OCaml List module provides, in addition to the map,
fold_left, and fold_right higher-order functions, several other useful
higher-order list manipulation functions. For instance, map2 is like
map, but takes two lists instead of one along with a function of two
arguments and applies the function to corresponding elements of the
two lists to form the result list. Use map2 to reimplement zip.
......................................................................
*)

let zip_ho : int list -> int list -> (int * int) list =
  List.map2 (fun fst snd -> (fst, snd)) ;;

(** Note: this is a good example of how useful higher order functions can be
in cleaning up your code *)
