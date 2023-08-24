# 201 PocketPiano

The software for the pocket piano consists of two parts: a PureData (Pd) patch and an interface program. 

The Pd patch handles all the heavy lifting: audio synthesis, MIDI, sequencing, loading pattern and synth modules, etc. It is designed to be platform-independent; it can be run on any machine with Pd installed. However, it relies on several external objects that must also be installed.

The interface program provides the controls for the Pd patch: keys, knobs, and LEDs. The interface program and Pd communicate via Open Sound Control (OSC) messages. Currently, the interface program is a C program that runs on the hardware, in this case, an i.MX6 processor running Yocto Linux. It checks for key presses and knob movement and sends these events to the Pd patch as OSC messages. It receives OSC messages from the Pd patch to set the LEDs.

## Pd Patch 

On the Pd side, things are divided into two parts: a mother patch and pattern / synth module patches. The mother patch (mother.pd) communicates with the hardware (via OSC) and handles MIDI, Presets, sequencing, and loading of the pattern and synth module patches. Extra files and helper patches are included in the lib folder.

The modules are designed to be self-contained patches that are dynamically loaded by mother.pd during initialization. To the mother patch, the module patches are black boxes: mother.pd sends MIDI notes and knob values in and gets sound out. For the modules, we decided to use the same format as Orac (a virtual modular synthesizer for the Organelle an other platforms). Orac can load modules for the 201 Pocket Piano, and modules may developed using the same method as one uses to create Orac modules. It should be noted that while modules for the 201 may be run inside Orac, it is not possible to run any random Orac module on the 201 without modification. The mother patch requires each module to have the exact same set of parameters, where in Orac, a module can have any number of parameters.   

## Creating Modules 

There are two types of modules that get loaded: patterns and synthesizers. mother.pd will load 6 pattern modules and 6 synthesizer modules during initialization. The module folders should be prefixed with a number 1-6 indicating the slot they will be placed in. Each module requires at least 2 files: module.pd and module.json. The module.pd file is the main entry point and is the file that gets loaded by mother.pd. The mother patch does not strictly require the module.json file, but it is required to be compatible with Orac. The module folder may also contain other sub-patches, sound files, or other data required by the module.  

The pattern modules are the most simple as they take no parameters. They recieve MIDI notes in [r notesIn-$1], apply some pattern process, and send MIDI notes out [s notesOut-$1]. The $1 part of the name becomes the slot number when the module is loaded and, therefore, unique for each module. Pattern modules also receive 2 global messages from the mother.pd patch: beat-clock and global-bpm. The mother.pd patch handles the metronome, and it sends a 0-360 integer beat phasor (beat-clock) and the current BPM (global-bpm). A module can use these to create arpeggios or other patterns based on the global clock.  

Synthesizer modules are only a little more complex. They receive MIDI notes [r notesIn-$1] and three knob parameters: [r knob1-$1], [r knob2-$1], and [r knob3-$1]. They will perform some synthesis or sampling and then send audio out: [outlet~ outL-$1]. 

The easiest way to start creating modules is by copying existing ones. The 1-thru module is a good starting point for pattern modules, and 1-RedMode is a good one for synth modules. 

As modules are loaded dynamically, it is important to avoid using the [loadbang] object for internal initialization. Instead, use [r loadbang-$1]. The mother.pd patch sends this bang after the modules are loaded, so using [r loadbang-$1] instead of [loadbang] will ensure everything gets initialized in the correct order. 

