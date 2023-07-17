# TFliteTemplatePlugin

This is a template plugin for [TFlite](https://www.tensorflow.org/lite) framework. It is intended to be used as a starting point for creating new plugins.
  
Crosscompilation has been tested as a headless plugin for the Elk Audio OS on a Raspberry PI4.  
`/libs` includes an onnxruntime (`2.11.0`) binary for linux-aarch64.

## Instruction for Elk Audio OS

1. Open `TFliteTemplatePlugin.jucer` with the Projucer and save to generate the project files.
2. cd into `Builds/linux-aarch64` and run `compileDebugElkPi4.sh` (Making sure you downloaded the appropriate ElkPiSDK, read the script comments for more info).
3. Copy the generated `Builds/linux-aarch64/build/TFliteTemplatePlugin.vst3` to your Elk Pi4 in the `~/plugins/` folder.
4. Copy `config_tflitetemplate.json` to a folder of your choice on the Elk Pi4.
5. From a terminal in the board, run:
    ```
    sushi -r -c config_tflitetemplate.json
    ``` 