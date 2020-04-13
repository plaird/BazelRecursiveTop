load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@BazelRecursiveTop//:repositories_transitives.bzl", "load_bazel_recursive_top_transitive_repos")

def load_bazel_recursive_top_repos():
  http_archive(
      name = "BazelRecursiveMiddle",
      sha256 = "e8ea7dfd1c01cf740166ddd4af662c21d224acb576b8511f36ab4ebe67ff84af",
      urls = [
          "https://github.com/plaird/BazelRecursiveMiddle/releases/download/1.0.0/BazelRecursiveMiddle-1.0.0.zip",
      ],
  )
  load_bazel_recursive_top_transitive_repos()
