module vhs

pub fn reverse_list<T>(ls []T) []T {
	arr_size := ls.len 
	return []T{len: arr_size, init: ls[arr_size-1 - index]}  
}