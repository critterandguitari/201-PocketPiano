declare filename "cg_clap_lp.dsp";
declare name "cg_clap_lp";
import("stdfaust.lib");

declare options "[midi:on][nvoices:4]";

declare author "Critter&Guitari";
declare copyright "GRAME";
declare license "LGPL with exception";

freq = hslider("freq", 440, 20, 2000, 0.01);
gate = button("gate");
gain = hslider("gain", 0, 0, 1, 0.001);

filterF = hslider("filterF", 1000, 50, 8000, 0.1);
filterQ = hslider("filterQ", 1, 1, 4, 0.01);

att = hslider("att", 0.001, 0.001, 1, 0.001);
dec = hslider("dec", 0.01, 0.001, 1, 0.001);
rel = hslider("rel", 0.8, 0.001, 4, 0.001);

delAmt = hslider("delAmt", 700, 0, 2000, 1);

env(del, d, g) = _ , en.adsre(att, d, 0, d, gate : @(del) ) * g : *;


process = no.noise * 0.25 : fi.resonlp( filterF, filterQ, 0.65) <: env(0, dec, 1), env(delAmt, dec, 0.5), env(delAmt*1.5, rel, 0.1) :> _ * gain;