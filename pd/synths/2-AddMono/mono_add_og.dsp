declare filename "mono_add.dsp";
declare name "mono_add";
import("stdfaust.lib");

declare author "Critter&Guitari";
declare copyright "GRAME";
declare license "LGPL with exception";

freq = hslider("freq", 440, 20, 2000, 0.01);
gate = button("gate");
gain = hslider("gain", 0, 0, 1, 0.001);

oscAmt = 12;

selWave = hslider("selWave", 0, 0, 1, 0.001) : si.polySmooth(gate, 0.999, 10);

att = hslider("att", 0.01, 0.001, 4, 0.001);
dec = hslider("dec", 0.01, 0.001, 4, 0.001);
sus = hslider("sus", 0.5, 0, 1, 0.001);
rel = hslider("rel", 0.1, 0.001, 4, 0.001);

port = hslider("port", 5, 0.001, 2000, 0.001);

fFreq = hslider("fFreq", 0.1, 0, 1, 0.001) : si.polySmooth(gate, 0.999, 10);
fRez = hslider("fRez", 4, 0, 120, 1) : si.polySmooth(gate, 0.999, 10);


/*
wave1 = waveform{1,2,3,4,5,6,7,8,9,10,11,12};             // saw
wave2 = waveform{1,-3,5,-7,9,-11,13,-15,17,-19,21,-23};   // square,triangle
wave3 = waveform{1,-3,-3.01, 5, 4.99, -7, -7.001, 9, 8.99, -11, -11.01, 13}; // detuned sq/tri
wave4 = waveform{1,0.5,3,5,12,18,20,24,29,32,36,48};
*/

// bandlimited simple osc for additive
osc(num, i, amp, a,d,s,r, f, rez) = bLimit(_ * i, 18,000), 0 : ((os.oscp*0.5) * amp) * en.adsre(a,d,s,r,gate) : filtBP
with{
    // if freq is above 19,000 output 0
    bLimit(fr,x) = fr < (x), fr : *;
    // 'filter'
    range = num/oscAmt;
    sweep = (f/2) - 0.5;
    scale = abs( sweep - range );
    //filtBP = 
    filtBP = _, pow( sin( ((scale + 0.5) / 2) * ma.PI ), rez): *;
};


/*theTab(i,sel) = it.interpolate_cubic(sel, rdtable(wave1,i), rdtable(wave2,i), rdtable(wave3,i),rdtable(wave4,i) );
*/
square(i) = odd * every
with{
    odd = ((i*2) + 1);
    every = ((i%2)*2) - 1;
};

process = freq : fi.lowpass(1, port) <: sum(i, oscAmt, osc( i,
                                square(i), 
                                pow(0.7/(i+1),1), 
                                att/(i+1)   ,
                                dec/(i+1)        ,
                                sus    ,
                                rel/(i+1)    ,
                                fFreq            ,
                                fRez   
                                )       
                    ) :> _ * (gain);

