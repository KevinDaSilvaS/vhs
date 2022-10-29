# vhs
Haskell list functions implemented in v lang 

VHS is an implementation of some useful functions in V that exist in the Haskell programming language Prelude

### Importing the module
```
  v install vhs KevinDaSilvaS.vhs
```
In your v file import 
```
 import kevindasilvas.vhs as vhsmod
```
To use a function just type:
```
 println(vhsmod.take(2, [1,2,3])) // [1,2]
```

### List methods
  - #### Take - takes the first n elements of a list
    ```
     println(vhsmod.take(2, [1,2,3])) // [1,2]
    ```
    
    ```
     println(vhsmod.take(5, [1,2,3])) // [1,2,3]
    ```
  - #### Drop - drops the first  n elements of a list
    ```
     println(vhsmod.drop(2, [1,2,3])) // [3]
    ```
    
    ```
     println(vhsmod.drop(5, [1,2,3])) // []
    ```
