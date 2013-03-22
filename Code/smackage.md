Execute serial statement as in imperative programming languages:
```sml
val () = Configure.init ()
```
I don't think this is good style. Check `opam` for comparision.

Check if user typed 'y'

```sml
 in case String.tokens Char.isSpace
                        (valOf (TextIO.inputLine TextIO.stdIn)) of
                   [] => ()
                 | (str :: _) => 
                      if String.isPrefix "y" str 
                         orelse String.isPrefix "Y" str
                      then ()
                      else if String.isPrefix "n" str 
                           orelse String.isPrefix "N" str
                      then raise SmackExn "User cancelled command"
                      else (print "I don't understand that.\n"; confirm ())
```
Isn't this too verbose?