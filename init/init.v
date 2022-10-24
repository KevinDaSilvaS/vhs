module init

import take as t

pub fn init<T>(ls []T) []T {
	arr_size := ls.len
	if arr_size <= 1 {
		return []
	}
	
	return t.take(arr_size-1, ls)
}