load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def rtk_btusb_module(name, kernel_build, deps = None):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/bt-modules/realtek:rtk_btusb_srcs"],
        makefile = ["//vendor/amlogic/bt-modules/realtek:Makefile"],
        deps = deps,
        outs = ["rtk_btusb.ko"],
        kernel_build = kernel_build,
    )
