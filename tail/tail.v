module tail

import drop as d

pub fn tail<T>(ls []T) []T {
	return d.drop(1, ls)
}