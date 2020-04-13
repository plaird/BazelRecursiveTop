load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@BazelRecursiveTop//:repositories_transitives.bzl", "load_bazel_recursive_top_transitive_repos")

def load_bazel_recursive_top_repos():
  git_repository(
      name = "BazelRecursiveMiddle",
      branch = "git_repo",
      remote = "https://github.com/plaird/BazelRecursiveMiddle",
  )
  load_bazel_recursive_top_transitive_repos()
