This codebase showcases a nil pointer dereference bug in Go/Gomobile.

As per [Go's runtime](https://go.dev/blog/defer-panic-and-recover),
any `defer`'ed func should run before a panic happens, where you are able to
call `recover()` to stop the panic.

This does not happen on `go version go1.21.5 darwin/arm64` and when building
an `.xcframework` for macOS via `gomobile`.

# /GoCode

This folder contains the Go program and the xcframework.
You can build the xcframework yourself with
`GO111MODULE=on gomobile bind -target=macos`.

You need to install
[gomobile](https://godoc.org/golang.org/x/mobile/cmd/gomobile) to build the
xcframework.

A pre-compiled xcframework is already provided
@ GoCode/Gopointerderefcrash.xcframework

# /GoNilPointerDerefCrash and GoNilPointerDerefCrash.xcodeproj

The Xcode project for the Swift program.
Open this project and build it. Then press on the button to trigger the crash.
