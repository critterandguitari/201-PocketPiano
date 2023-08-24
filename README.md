# 201-PocketPiano

The software for the pocket piano is made up of two parts: a PureData (Pd) patch and an interface program. 

The Pd patch handles all of the heavy lifting: audio synthesis, MIDI, sequencing, loading pattern and synth modules, etc.  It is designed to be platform independent, so it could be run on any machine with Pd installed, however it does rely on several external objects that would have to be installed.

The interface program provides the controls to the Pd patch: keys, knobs, and LEDs. They communicate via Open Sound Control (OSC) messages. Currently the interface program is a C program that runs on the hardware, in this case an i.MX6 processor running Yocto Linux. It checks for key presses and knob movement and sends these events to the Pd patch as OSC messages. It receives OSC messages from the Pd patch to set the LEDs.

## Pd Patch 

On the pd side of things: 2 parts: a mother patch and pattern/synth module patches. 

### Mother patch 

The mother patch (mother.pd) communicates with the hardaware (via OSC), handles MIDI, Presets, sequencing, and loading of the pattern and synth module patches. Extra files and helper patches are included in the lib folder.

### Module patches 

The modules are designed to be self contained patches that are dynamically loaded by mother.pd during initialization.

