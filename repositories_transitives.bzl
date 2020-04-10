# PROBLEM: this does not work, even though the git_repository rule has already run for @BazelRecursiveMiddle
#load("@BazelRecursiveMiddle//:repositories.bzl", "load_bazel_recursive_middle_repos")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def load_bazel_recursive_top_transitive_repos():
  #load_bazel_recursive_middle_repos()

  # WORKAROUND: this is where the workaround lives
  # ideally, a a transitive of BazelRecursiveMiddle this would be pulled in automatically
  # but until Issue 1943 is addressed we have to manually depend on the transitive closure
  # of downstream workspaces
  git_repository(
     name = "BazelRecursiveBottom",
     branch = "master",
     remote = "https://github.com/plaird/BazelRecursiveBottom",
  )
