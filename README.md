# TFliteTemplatePlugin

This is a template plugin for [TFlite](https://www.tensorflow.org/lite) framework. It is intended to be used as a starting point for creating new plugins.
If compiled as it is, the plugin will just pass the audio through. However, it will prove that a plugin that integrates TensorFlow Lite can be compiled and run on either the local machine or on the Elk Audio OS.  

This is part of the [elk-audio-AI-tutorial](https://github.com/domenicostefani/elk-audio-AI-tutorial/), where you'll find working examples to be compiled.

  
Crosscompilation has been tested as a headless plugin for the Elk Audio OS on a Raspberry PI4.  
`/libs` includes an TensorFlow Lite (`v2.11.0`) binary for linux-aarch64.

## Instruction for Elk Audio OS

1. Download and install the [Elk Pi4 SDK](https://github.com/elk-audio/elk-pi/releases) for the desired OS version .
2. cd into `libs/` and run the TensorFlow Lite compile script for the desired architecture.
3. Open `TFliteTemplatePlugin.jucer` with the Projucer and save to generate the project files.
4. cd into `Builds/linux-aarch64` and run `compileDebugElkPi4.sh` (Making sure you downloaded the appropriate ElkPiSDK, read the script comments for more info).
5. Copy the generated `Builds/linux-aarch64/build/TFliteTemplatePlugin.vst3` to your Elk Pi4 in the `~/plugins/` folder.
6. Copy the desired JSON config file from `config_files/` to a folder of your choice on the Elk Pi4.
7. From a terminal in the board, run:
    ```
    sushi -r -c /path/to/config_tflitetemplate.json
    ``` 

This is part of the [elk-audio-AI-tutorial](https://github.com/domenicostefani/elk-audio-AI-tutorial/).


*2023 Domenico Stefani*