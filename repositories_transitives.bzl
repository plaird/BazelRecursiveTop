# PROBLEM: this does not work, even though the http_archive rule has already run for @BazelRecursiveMiddle
#load("@BazelRecursiveMiddle//:repositories.bzl", "load_bazel_recursive_middle_repos")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def load_bazel_recursive_top_transitive_repos():
  # load_bazel_recursive_middle_repos()

  # WORKAROUND: this is where the workaround lives
  # ideally, a a transitive of BazelRecursiveMiddle this would be pulled in automatically
  # but until Issue 1943 is addressed we have to manually depend on the transitive closure
  # of downstream workspaces
  http_archive(
      name = "BazelRecursiveBottom",
      sha256 = "58c5448c4abbcf3ae1af941a87ff033e00f6129a636b2ca48f60844b01bc0ab5",
      urls = [
          "https://github.com/plaird/BazelRecursiveBottom/releases/download/1.0.0/BazelRecursiveBottom-1.0.0.zip",
      ],
  )
