load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def btusb_module(name, kernel_build):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/bt-modules/broadcom:btusb_srcs"],
        makefile = ["//vendor/amlogic/bt-modules/broadcom:Makefile"],
        outs = ["btusb.ko"],
        kernel_build = kernel_build,
    )

def btmtk_usb_module(name, kernel_build):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/bt-modules/mtk:btmtk_usb_srcs"],
        makefile = ["//vendor/amlogic/bt-modules/mtk:Makefile"],
        outs = ["btmtk_usb.ko"],
        kernel_build = kernel_build,
    )

def rtk_btusb_module(name, kernel_build, deps = None):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/bt-modules/realtek:rtk_btusb_srcs"],
        makefile = ["//vendor/amlogic/bt-modules/realtek:Makefile"],
        deps = deps,
        outs = ["rtk_btusb.ko"],
        kernel_build = kernel_build,
    )
