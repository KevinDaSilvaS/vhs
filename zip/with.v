module zip

import arrays

pub fn zip<T>(ls1 []T, ls2 []T) [][]T {
	return arrays.chunk(arrays.merge(ls1, ls2), 2)
}

pub fn with<T>(func fn (v1 T, v2 T) T, ls1 []T, ls2 []T) []T {
	zipped_lists := zip(ls1, ls2)

	op := fn <T>(v []T, func fn (v1 T, v2 T) T) T {
		v1 := v[0]
		v2 := v[1]
		return func(v1, v2)
	}

	results := []T{len: zipped_lists.len, init: op(zipped_lists[0 + it], func)}

	return results
}