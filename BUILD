load("@aspect_bazel_lib//lib:transitions.bzl", "platform_transition_filegroup")
load("@rules_pkg//pkg:mappings.bzl", "pkg_attributes", "pkg_files")
load("@rules_pkg//pkg:pkg.bzl", "pkg_tar")

pkg_files(
    name = "bins",
    srcs = [
        "@llvm-project//lld",
        "@llvm-project//llvm:dsymutil",
        "@llvm-project//llvm:llvm-libtool-darwin",
    ],
    attributes = pkg_attributes(
        mode = "0755",
    ),
    prefix = "bin",
)

pkg_tar(
    name = "dist",
    srcs = [
        ":bins",
    ],
    extension = ".tar.gz",
)

platform_transition_filegroup(
    name = "for_arm64",
    srcs = [":dist"],
    target_platform = "@zig_sdk//libc_aware/platform:linux_arm64_musl",
)

platform_transition_filegroup(
    name = "for_amd64",
    srcs = [":dist"],
    target_platform = "@zig_sdk//libc_aware/platform:linux_amd64_musl",
)

filegroup(
    name = "for_all_platforms",
    srcs = ["for_arm64", "for_amd64"],
)
