module vhs

pub fn take<T>(amount int, ls []T) []T {
	arr_size := ls.len
	if amount >= arr_size {
		return ls 
	}
	
	return []T{len: amount, init: ls[0 + index]}
}

pub fn drop<T>(amount int, ls []T) []T {
	arr_size := ls.len
	if amount >= arr_size {
		return []
	}
	
	return []T{len: arr_size-amount, init: ls[index+amount]}
}

pub fn head<T>(ls []T) T {
	return ls[0]
}

pub fn last<T>(ls []T) T {
	return ls[ls.len-1]
}

pub fn init<T>(ls []T) []T {
	arr_size := ls.len
	if arr_size <= 1 {
		return []
	}
	
	return take(arr_size-1, ls)
}

pub fn tail<T>(ls []T) []T {
	return drop(1, ls)
}