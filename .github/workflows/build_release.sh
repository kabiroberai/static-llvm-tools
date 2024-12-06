set -eux

bazel build --remote_header=x-buildbuddy-api-key="$BUILDBUDDY_API_KEY" //:for_all_platforms

mv bazel-out/linux_arm64_musl-opt/bin/dist.tar.gz linux_arm64.tar.gz
mv bazel-bin/linux_amd64_musl-opt/bin/dist.tar.gz linux_amd64.tar.gz
