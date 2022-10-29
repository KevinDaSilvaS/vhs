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

### Reverse a list
```
   println(vhsmod.reverse_list([1,2,3])) // [3,2,1]
```
```
   println(vhsmod.reverse_list([])) // []
```


### Zips
 - #### Zip - zips two lists in pairs of twos
    ```
     println(vhsmod.zip([2, 5], [1,2,3])) // [[2,1], [5,2]]
    ```
    
    ```
      println(vhsmod.zip([2, 5, 10], [1,2,3])) // [[2,1], [5,2], [10, 3]]
    ```
    
  - #### With - calls zip on two lists and apply a function on the pair
    ```
     sum_fn := fn (v1 int, v2 int) int {
        return v1+v2
     }
     println(vhsmod.with(sum_fn, [4,5,6], [1,2,3])) // [5, 7, 9]
    ```
    a point to overview is that the return type of the function should be equal to the parameters the example below will cause an error:
    ```
      conc_fn := fn (v1 int, v2 int) string {
        return '$v1 <-> $v2'
     }
     println(vhsmod.with(conc_fn, [4,5,6], [1,2,3])) // panics, with functions expects two T types as parameters and expects to return a T type result if two integers are passed V expects the return value to be integer 
    ```

### List methods
  - #### Take - takes the first n elements of a list
    ```
     println(vhsmod.take(2, [1,2,3])) // [1,2]
    ```
    
    ```
     println(vhsmod.take(5, [1,2,3])) // [1,2,3]
    ```
  - #### Drop - drops the first n elements of a list
    ```
     println(vhsmod.drop(2, [1,2,3])) // [3]
    ```
    
    ```
     println(vhsmod.drop(5, [1,2,3])) // []
    ```
  - #### Head - returns the first element of a list
    ```
     println(vhsmod.head([1,2,3])) // [1]
    ```
    
    ```
     println(vhsmod.head([])) // panics the list should have a length of at least one element
    ```
  - #### Last - returns the last element of a list
    ```
     println(vhsmod.last([1,2,3])) // [3]
    ```
    
    ```
     println(vhsmod.last([])) // panics the list should have a length of at least one element
    ```
  - #### Init - returns all the elements of a list except by the last one
    ```
     println(vhsmod.init([1,2,3])) // [1, 2]
    ```
    
    ```
     println(vhsmod.init([])) // []
    ```
    
   - #### Tail - returns all the elements of a list except by the first one
    ```
     println(vhsmod.tail([1,2,3])) // [2, 3]
    ```

    ```
      println(vhsmod.tail([])) // []
    ```

 
