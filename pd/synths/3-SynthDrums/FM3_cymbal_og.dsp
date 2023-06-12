declare filename "FM3_cymbal.dsp";
declare name "FM3_cymbal";
import("stdfaust.lib");

declare options "[midi:on][nvoices:4]";

declare author "Critter&Guitari";
declare copyright "GRAME";
declare license "LGPL with exception";

freq = hslider("freq", 440, 20, 2000, 0.01);
gate = button("gate");
gain = hslider("gain", 0, 0, 1, 0.001);

freqLP = hslider("freqLP", 4040, 20, 10000, 1);
qLP = hslider("qLP", 1, 1, 100, 0.1);
freqHP = hslider("freqHP", 5200, 20, 10000, 1);
qHP = hslider("qHP", 1, 1, 100, 0.1);

att = hslider("att", 0.001, 0.001, 1, 0.001);
dec = hslider("dec", 1, 0.001, 8, 0.001);

op1F = hslider("op1F", 799, 20, 18000, 1);
op2F = hslider("op2F", 1269, 20, 18000, 1);
op3F = hslider("op3F", 1768, 20, 18000, 1);

operator(f, a, d, s, r, amp) =  os.oscp(f) * en.adsre(a,d,s,r,gate) * amp;

ringer = 0 : operator( freq*2.5, 0.001, 0.02,0, 0.02, 1) :
operator( freq, 0.001, 0.4,0, 0.4, 0.5) * gain;

noiser = 0 : operator( op1F, 0.01, dec*4, 1, dec*4, 15) * gain : 
operator( op2F, 0.01, dec*4, 1, dec*4, 15) * gain : 
operator( op3F, att, dec, 0, dec, 0.2); 

process = noiser <: fi.resonlp(freqLP, qLP, 0.5), fi.resonhp(freqHP, qHP, 0.5) :> _;