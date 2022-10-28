module main

import math

pub fn zip<T>(ls1 []T, ls2 []T) [][]T {
	total := math.min(ls1.len, ls2.len)
	return [][]T{len: total, init: [ls1[it], ls2[it]]}  
}

pub fn with<T>(func fn (v1 T, v2 T) T, ls1 []T, ls2 []T) []T {
	zipped_lists := zip(ls1, ls2)

	op := fn <T>(v []T, func fn (v1 T, v2 T) T) T {
		v1 := v[0]
		v2 := v[1]
		return func(v1, v2)
	}

	results := []T{len: zipped_lists.len, init: op(zipped_lists[it], func)}

	return results
}

/* import take
import init
import drop
import tail
import head
import last
import reverse_list */
//import zip

fn main() {
	/* println('Hello World!')
	println(init.init([1,2,3,4,5]))
	println(drop.drop(2, [1,2,3,4,5]))
	println(tail.tail([1,2,3,4,5]))
	println(head.head([1,2,3,4,5]))
	println(last.last([1,2,3,4,5]))
	println(reverse_list.reverse_list([1,2,3,4,5]))
 */
	/* sum_fn := fn (n int, n2 int) int {
		return n+n2
	} */

	//println(zip.with(sum_fn, [1,2,3,4,5], [1,2,3,4,5]))
	//println(zip.zip([1,2,3,4,5], [1,2,3,4,5]))
	/* println(zip.zip([1,2,3,4,5,6], [7,22,23,24,25]))
	println(zip.with(sum_fn, [1,2,3], [7,22,23,24,25])) */

	println('hi')
}
