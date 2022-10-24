module last

pub fn last<T>(ls []T) T {
	return ls[ls.len-1]
}