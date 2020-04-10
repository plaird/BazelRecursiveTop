# BazelUpstream: Hierarchical Transitive Workspace Dependencies

One of a set of Bazel workspaces that shows a hierarchical dependency pattern of GitHub hosted Bazel workspaces.

- This [upstream](https://github.com/plaird/BazelUpstream) workspace depends on...
- a rule from [this downstream workspace](https://github.com/plaird/BazelDownstream) which depends on...
- a rule from [this leaf downstream workspace](https://github.com/plaird/BazelDownstreamLeaf)

This is a concrete example of a pattern known by a few names:

- recursive workspaces [issue 1943](https://github.com/bazelbuild/bazel/issues/1943)
- transitive workspace dependencies [issue 2757](https://github.com/bazelbuild/bazel/issues/2757)
- hierarchical workspace files

The current status of this is tracked in [issue 1943](https://github.com/bazelbuild/bazel/issues/1943) and is unresolved.
