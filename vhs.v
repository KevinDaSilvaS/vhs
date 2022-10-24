module main

import take
import init
import drop
import tail
import head
import last
import reverse_list
import zip

fn main() {
	println('Hello World!')
	println(init.init([1,2,3,4,5]))
	println(drop.drop(2, [1,2,3,4,5]))
	println(tail.tail([1,2,3,4,5]))
	println(head.head([1,2,3,4,5]))
	println(last.last([1,2,3,4,5]))

	sum_fn := fn (n int, n2 int) int {
		return n+n2
	}

	println(zip.with(sum_fn, [1,2,3,4,5], [1,2,3,4,5]))

}
