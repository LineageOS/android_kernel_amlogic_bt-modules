load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def btmtk_usb_module(name, kernel_build, deps = None):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/bt-modules/mtk:btmtk_usb_srcs"],
        makefile = ["//vendor/amlogic/bt-modules/mtk:Makefile"],
        deps = deps,
        outs = ["btmtk_usb.ko"],
        kernel_build = kernel_build,
    )
