declare filename "cg_real_rim.dsp";
declare name "cg_real_rim";
import("stdfaust.lib");

declare author "Critter&Guitari";
declare copyright "GRAME";
declare license "LGPL with exception";

freq = hslider("freq", 440, 20, 2000, 0.01);
gate = button("gate");
gain = hslider("gain", 0, 0, 1, 0.001);

att = hslider("att", 0.001, 0.001, 1, 0.001);
dec = hslider("dec", 0.1, 0.001, 1, 0.001);
rel = hslider("rel", 0.8, 0.001, 4, 0.001);

bpF = hslider("bpF", 1000, 20, 10000, 1);
hpF = hslider("hpF", 3000, 20, 10000, 1);
bpQ = hslider("bpQ", 1, 1, 100, 0.01);
hpQ = hslider("hpQ", 2, 1, 100, 0.01);

noiseAmp = hslider("noiseAmp", 0.5, 0, 1, 0.001);
noiseDec = hslider("noiseDec", 0.01, 0.0001, 2, 0.001);
decay = hslider("decay", 0.01, 0.0001, 2, 0.001);

freqMod = en.adsre(0.001, 0.002, 0, 0.002, gate);


oscils = os.sawtooth(444+(freqMod*-400)) * 0.25, os.sawtooth(1000+(freqMod*-4000)) * 0.15 : +;
noise = (no.noise * 0.1) * noiseAmp,  en.adsre(0.001,noiseDec,0,noiseDec,gate) : *;



process = oscils, en.adsre(0.001,decay,0,decay,gate) : *, noise :> _ <: fi.resonbp(bpF,bpQ, 1), fi.resonhp(hpF, hpQ, 0.4) :> _;