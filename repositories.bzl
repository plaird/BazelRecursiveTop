load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def load_bazel_upstream_repos():
  git_repository(
      name = "BazelDownstream",
      branch = "master",
      remote = "https://github.com/plaird/BazelDownstream",
  )

  # WORKAROUND: this is where the workaround lives
  # ideally, a a transitive of BazelDownstream this would be pulled in automatically
  # but until Issue 1943 is addressed we have to manually depend on the transitive closure
  # of downstream workspaces
  git_repository(
     name = "BazelDownstreamLeaf",
     branch = "master",
     remote = "https://github.com/plaird/BazelDownstreamLeaf",
  )
