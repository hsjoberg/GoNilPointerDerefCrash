package gopointerderefcrash

import (
	_ "golang.org/x/mobile/bind"
)

type X struct {
	Y int64
}

func TestDeref() {
	println("Testing");
	var x *X

	defer func() {
		println("Inside deferred func, recovering")
		recover()
	}()

	hello(x.Y)
}

func hello(x int64) {
	println("Inside hello()")
}
