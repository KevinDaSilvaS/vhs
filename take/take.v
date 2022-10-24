module take

pub fn take<T>(amount int, ls []T) []T {
	arr_size := ls.len
	if amount >= arr_size {
		return ls 
	}
	
	return []T{len: amount, init: ls[0 + it]}
}