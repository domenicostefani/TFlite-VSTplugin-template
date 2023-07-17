/*
 * This file contains the basic framework code for a JUCE plugin that uses the ONNX runtime for deep inference.
*/

#pragma once

#include <JuceHeader.h>
#include "PluginProcessor.h"

//==============================================================================
/**
*/
class TFliteTemplatePluginAudioProcessorEditor  : public juce::AudioProcessorEditor
{
public:
    TFliteTemplatePluginAudioProcessorEditor (TFliteTemplatePluginAudioProcessor&);
    ~TFliteTemplatePluginAudioProcessorEditor() override;

    //==============================================================================
    void paint (juce::Graphics&) override;
    void resized() override;

private:
    // This reference is provided as a quick way for your editor to
    // access the processor object that created it.
    TFliteTemplatePluginAudioProcessor& audioProcessor;

    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (TFliteTemplatePluginAudioProcessorEditor)
};
