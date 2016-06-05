#!/usr/bin/python

from ninja_syntax import Writer
import os, sys

source_dirs = [
        ".",
        "driverlib",
        "inc" ]

def subst_ext(fname, ext):
    return os.path.splitext(fname)[0] + ext

def get_sources():
    fnames = []
    for d in source_dirs:
        for f in os.listdir(d):
            fnames.append(os.path.join(d, f))
    return fnames

def get_includes():
    return " ".join(map(lambda x : "-I"+x, source_dirs))

with open("build.ninja", "w") as buildfile:
    n = Writer(buildfile)

    # Variable declarations
    n.variable("cflags", "-c -Os -w -fno-rtti -fno-exceptions -ffunction-sections -fdata-sections -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fsingle-precision-constant -DF_CPU=80000000L -DPART_TM4C123GH6PM " + get_includes())
    n.variable("lflags", "-Os -nostartfiles -nostdlib -Wl,--gc-sections -T lm4fcpp_blizzard.ld -Wl,--entry=ResetISR -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fsingle-precision-constant -lm -lc -lgcc")

    # Rule declarations
    n.rule("cxx",
           command = "arm-none-eabi-g++ $cxxflags -c $in -o $out")

    n.rule("cc",
           command = "arm-none-eabi-gcc $cflags -c $in -o $out")

    n.rule("cca",
           command = "arm-none-eabi-gcc $cflags -S -c $in -o $out")

    n.rule("cl",
           command = "arm-none-eabi-gcc $lflags $in -o $out")

    n.rule("oc",
           command = "arm-none-eabi-objcopy -O binary $in $out")

    n.rule("cdb",
           command = "ninja -t compdb cc > compile_commands.json")

    n.rule("cscdb",
           command = "cscope -Rbq")

    # Build rules
    n.build("compile_commands.json", "cdb")
    n.build("cscope.*", "cscdb")

    objects = []

    def cc(name):
        ofile = subst_ext(name, ".o")
        n.build(ofile, "cc", name)
        objects.append(ofile)
    def cca(name):
        ofile = subst_ext(name, ".s")
        n.build(ofile, "cca", name)
        objects.append(ofile)
    def cxx(name):
        ofile = subst_ext(name, ".o")
        n.build(ofile, "cxx", name)
        objects.append(ofile)
    def cl(oname, ofiles):
        n.build(oname, "cl", ofiles)

    sources = get_sources()
    map(cc, filter(lambda x : x.endswith(".c"), sources))
    map(cxx, filter(lambda x : x.endswith(".cpp"), sources))

    cl("main.elf", objects)

    n.build("main.bin", "oc", "main.elf")
