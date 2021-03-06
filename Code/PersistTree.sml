signature SET =
sig
    type Elem
    type Set

    val empty: Set
    val insert: Elem * Set -> Set
    val member: Elem * Set -> bool
end

signature ORDERED =
sig
    type T
    val eq: T * T -> bool
    val lt: T * T -> bool
    val leq: T * T -> bool
end

functor UnbalancedSet(Element: ORDERED): SET =
        struct

        type Elem = Element.T
        datatype Tree = E | T of Tree * Elem * Tree
        type Set = Tree
        val empty = E

        fun member (x, E) = false
          | member (x, T(a, y, b)) =
            if Element.lt (x, y) then member (x, a)
            else if Element.lt (y, x) then member (x, b)
            else true

        fun insert (x, E) = T(E, x, E)
          | insert (x, s as T(a, y, b)) =
            if Element.lt (x, y) then T (insert (x, a), y, b)
            else if Element.lt (y, x) then T (a, y, insert(x, b))
            else s

        exception DuplicatedKeyExp; (* ; is a must here. *)

        (* Insert same key doesn't copy path *)
        fun insert_exp (x, E) = T(E, x, E)
          | insert_exp (x, s as T(a, y, b)) =
            (if Element.lt (x, y) then T (insert_exp (x, a), y, b)
             else if Element.lt (y, x) then T (a, y, insert_exp(x, b))
             else raise DuplicatedKeyExp)
            handle DuplicatedKeyExp => s
                           
        end                         

(*
Exercise 2.2

        fun member (x, E) = false
          | member (x, T(a, y, b)) =
            if Element.lt (x, y) then member (x, a)
            else if member (x, b) then true
            else if x = y then true else false
*)
            
(* TODO more exercise at 2.4/5 *)
