declare filename "add_drum_3.dsp";
declare name "add_drum_3";
import("stdfaust.lib");

declare options "[midi:on][nvoices:4]";

declare author "Critter&Guitari";
declare copyright "GRAME";
declare license "LGPL with exception";

freq = hslider("freq", 440, 20, 2000, 0.01);
gate = button("gate");
gain = hslider("gain", 0, 0, 1, 0.001);

freqDepth = hslider("freqDepth", 12, -24, 24, 0.1);

freqAtt = hslider("freqAtt", 0.001, 0.001, 1, 0.001);
freqDec = hslider("freqDec", 0.05, 0.001, 1, 0.001);

freqEnv(d) = en.adsre(freqAtt, freqDec, 0, freqDec, gate) * d;

osc1F = hslider("osc1F", 1, 0.25, 12, 0.001);
osc2F = hslider("osc2F", 2, 0.25, 12, 0.001);
osc3F = hslider("osc3F", 3, 0.25, 12, 0.001);

osc1Amp = hslider("osc1Amp", 1, 0, 1, 0.001);
osc2Amp = hslider("osc2Amp", 0.3, 0, 1, 0.001);
osc3Amp = hslider("osc3Amp", 0.01, 0, 1, 0.001);

osc1D = hslider("osc1D", 1, 0, 1, 0.001);
osc2D = hslider("osc2D", 0.3, 0, 1, 0.001);
osc3D = hslider("osc3D", 0.1, 0, 1, 0.001);

osc1Att = hslider("osc1Att", 0.01, 0, 1, 0.001);
osc2Att = hslider("osc2Att", 0.005, 0, 1, 0.001);
osc3Att = hslider("osc3Att", 0.001, 0, 1, 0.001);

freqModder = ba.midikey2hz( ba.hz2midikey( freq ) + freqEnv(freqDepth));

// bandlimited simple osc for additive
osc(i, amp, a,d,s,r, f, rez) = ((os.oscp( bLimit(_ * i, 18,000), 0) * 0.5) * amp : env), midiGain : *
with{
    // if freq is above 19,000 output 0
    env = _ , en.adsre(a,d,s,r,gate) : *;
    bLimit(fr,x) = fr < (x), fr : *;
    midiGain(f) = (((ba.hz2midikey(f)/ 127) / 4) + 0.25) * (ma.PI*2)  : sin;
    // 'filter'
    //scale = (i/oscAmt) + (f - (i/oscAmt) );
    //filtBP = _, pow( sin( ((scale + 0.5) / 2) * ma.PI ), rez): *;
};

process = freqModder <: osc( osc1F, osc1Amp, osc1Att, osc1D, 0, osc1D ),
                    osc( osc2F, osc2Amp, osc2Att, osc2D, 0, osc2D ),
                    osc( osc3F, osc3Amp, osc3Att, osc3D, 0, osc3D )

:> * (gain) ;