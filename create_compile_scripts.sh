#!/bin/bash

set -e

echo -e '#!/bin/bash\n# Cross-compilation script for ElkOS on RPI4\n# Instructions at:\n# https://elk-audio.github.io/elk-docs/html/documents/building_plugins_for_elk.html#cross-compiling-juce-plugin\n\nunset LD_LIBRARY_PATH\nsource /opt/elk/0.11.0/environment-setup-cortexa72-elk-linux\nexport CXXFLAGS="-O3 -pipe -ffast-math -feliminate-unused-debug-types -funroll-loops -Wno-poison-system-directories"\nAR=aarch64-elk-linux-ar make -j`nproc` CONFIG=Release CFLAGS="-DJUCE_HEADLESS_PLUGIN_CLIENT=1 -Wno-psabi" TARGET_ARCH="-mcpu=cortex-a72 -mtune=cortex-a72"\n# Rename VST3 inner path to match the subfolder expexted by elkos\nfor f in `find build -name "*.vst3"`; do rm -rf $f/Contents/aarch64-linux && mv $f/Contents/arm64-linux $f/Contents/aarch64-linux; done' >$1/Builds/linux-aarch64/compileReleaseElkPi4.sh
chmod +x $1/Builds/linux-aarch64/compileReleaseElkPi4.sh

echo -e '#!/bin/bash\n# Cross-compilation script for ElkOS on RPI4\n# Instructions at:\n# https://elk-audio.github.io/elk-docs/html/documents/building_plugins_for_elk.html#cross-compiling-juce-plugin\n\nunset LD_LIBRARY_PATH\nsource /opt/elk/0.11.0/environment-setup-cortexa72-elk-linux\nexport CXXFLAGS="-O3 -pipe -ffast-math -feliminate-unused-debug-types -funroll-loops -Wno-poison-system-directories"\nAR=aarch64-elk-linux-ar make -j`nproc` CONFIG=Debug CFLAGS="-DJUCE_HEADLESS_PLUGIN_CLIENT=1 -Wno-psabi" TARGET_ARCH="-mcpu=cortex-a72 -mtune=cortex-a72"\n# Rename VST3 inner path to match the subfolder expexted by elkos\nfor f in `find build -name "*.vst3"`; do rm -rf $f/Contents/aarch64-linux && mv $f/Contents/arm64-linux $f/Contents/aarch64-linux; done' >$1/Builds/linux-aarch64/compileDebugElkPi4.sh
chmod +x $1/Builds/linux-aarch64/compileDebugElkPi4.sh

echo -e '#!/bin/bash\nmake -j`nproc` CONFIG=Release' > $1/Builds/linux-x86_64/compileRelease.sh
chmod +x $1/Builds/linux-x86_64/compileRelease.sh

