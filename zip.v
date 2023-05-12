module vhs

import math

pub struct Tuple<T, V> {
   x T
   y V
}

pub fn zip<T, V>(ls1 []T, ls2 []V) []Tuple<T, V> { 
    total := math.min(ls1.len, ls2.len)
    return []Tuple<T, V>{len: total, init: Tuple<T, V>{x: ls1[it], y: ls2[it]}}
}

pub fn zip_with<T, V, U>(func fn (v1 T, v2 V) U, ls1 []T, ls2 []V) []U {
	total := math.min(ls1.len, ls2.len)
	return []U{len: total, init: func(ls1[it], ls2[it])}
}