load("@BazelDownstream//:downstream.bzl", "downstream_helloworld")


def upstream_helloworld(name, **kwargs):
  # invoke our downstream workspace rule
  downstream_helloworld(name+"_down", **kwargs)

  # invoke this workspace rule
  native.genrule(
    name = name,
    srcs = ["@BazelUpstream//:upstream_rule.sh"],
    outs = ["upstream_out.txt"],
    cmd = "./$(location @BazelUpstream//:upstream_rule.sh) $@",
    tools = ["@BazelUpstream//:upstream_rule.sh"],
    **kwargs
  )
