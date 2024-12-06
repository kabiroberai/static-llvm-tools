This is a stripped down fork of [dzbarsky/static-clang](https://github.com/dzbarsky/static-clang) for building the [swift-sdk-darwin](https://github.com/kabiroberai/swift-sdk-darwin) toolset.

Specifically, we only need to produce static builds of

- lld: until https://github.com/swiftlang/llvm-project/pull/9698 is upstreamed
- dsymutil
- llvm-libtool-darwin
