module vhs

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