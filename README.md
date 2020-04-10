# BazelDownstreamLeaf: Hierarchical Transitive Workspace Dependencies

One of a set of Bazel workspaces that shows a hierarchical dependency pattern of GitHub hosted Bazel workspaces.

- This [top level](https://github.com/plaird/BazelRecursiveTop) workspace depends on...
- a rule from [this middle workspace](https://github.com/plaird/BazelRecursiveMiddle) which depends on...
- a rule from [this bottom workspace](https://github.com/plaird/BazelRecursiveBottom)

This is a concrete example of a pattern known by a few names:

- recursive workspaces [issue 1943](https://github.com/bazelbuild/bazel/issues/1943)
- transitive workspace dependencies [issue 2757](https://github.com/bazelbuild/bazel/issues/2757)
- hierarchical workspace files

There isn't an official solution for transitively loading external workspaces.
The workaround is to load the transitive closure of all external workspaces in the top workspace.

The current status of a this is tracked in [issue 1943](https://github.com/bazelbuild/bazel/issues/1943) and is unresolved.
