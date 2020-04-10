load("@BazelRecursiveMiddle//:recursive_middle.bzl", "recursive_middle_helloworld")


def recursive_top_helloworld(name, **kwargs):
  # invoke our middle workspace rule
  recursive_middle_helloworld(name+"_down", **kwargs)

  # invoke this workspace rule
  native.genrule(
    name = name,
    srcs = ["@BazelRecursiveTop//:recursive_top_rule.sh"],
    outs = ["recursive_top_out.txt"],
    cmd = "./$(location @BazelRecursiveTop//:recursive_top_rule.sh) $@",
    tools = ["@BazelRecursiveTop//:recursive_top_rule.sh"],
    **kwargs
  )
