module drop

pub fn drop<T>(amount int, ls []T) []T {
	arr_size := ls.len
	if amount >= arr_size-1 {
		return []
	}
	
	return []T{len: arr_size-amount, init: ls[it+amount]}
}