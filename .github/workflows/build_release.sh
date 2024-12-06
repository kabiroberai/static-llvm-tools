set -eux

bazel build --remote_header=x-buildbuddy-api-key="$BUILDBUDDY_API_KEY" //:for_all_platforms

mv bazel-out/linux_arm64_musl-opt/bin/dist.tar.xz linux_arm64.tar.xz
mv bazel-bin/linux_amd64_musl-opt/bin/dist.tar.xz linux_amd64.tar.xz

shasum -a 256 *tar.xz > SHA256.txt
