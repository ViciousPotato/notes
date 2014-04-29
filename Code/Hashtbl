1. OCaml对Hashing DOS attack的应对方式是，给Hashtbl.create添加一个random参数，表示是否从2^30种hashing function中随机选取一个。

  Question: how to make sure these 2^30 functions have different distribution pattern?
  
  seeded_hash_param
  
2. Hashtbl是mutable record

   > Boxed, mutable arrays are the main mechanism for implementing a hashtable, so that particular structure showed up the GC traversal issue. This is common to many languages. The symptom is excessive garbage collection (up to 95% of time spent in GC).
   
   hash table are mutable by nature, so hard to find purely functional data structure?
