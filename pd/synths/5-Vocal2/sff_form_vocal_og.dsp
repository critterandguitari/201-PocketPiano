declare filename "sff_form_vocal.dsp";
declare name "sff_form_vocal";
declare options "[midi:on][nvoices:1]";
import("stdfaust.lib");

declare author "Critter&Guitari";
declare copyright "GRAME";
declare license "LGPL with exception";
freq = hslider("freq", 300, 20, 8000, 0.001);
gate = button("gate");
gain = hslider("gain", 0.1, 0, 1, 0.001);
noise = hslider("noise", 0.05, 0, 1, 0.001);
rel = hslider("release", 0.1, 0.001, 4, 0.001);

vibGain = hslider("vibGain", 0.5, 0, 12, 0.01) : si.polySmooth(gate,0.999,10);
vibRate = hslider("vibRate", 0.5, 0, 10, 0.01) : si.polySmooth(gate,0.999,10);
type = hslider("type", 0.5, 0, 4, 0.01) ;
vowel = hslider("vowel [midi:ctrl 1 1]", 0.5, 0, 4, 0.01) : si.polySmooth(gate,0.999,10);
vibrato(g,r) = os.osc(r) * g;
// convert to midi for scaled vibrato range, convert back to hz
newFreq = ba.midikey2hz( ba.hz2midikey(freq) + vibrato(vibGain,vibRate) );

process =  pm.SFFormantModelBP(type,vowel,noise,newFreq, 0.01) * (gain);