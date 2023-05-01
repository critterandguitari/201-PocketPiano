declare filename "synth_hiHat.dsp"; declare name "synth_hiHat"; declare version "2.52.3";
declare compile_options "-single -scal -I libraries/ -I project/ -lang wasm";
declare library_path0 "/libraries/stdfaust.lib";
declare library_path1 "/libraries/noises.lib";
declare library_path2 "/libraries/filters.lib";
declare library_path3 "/libraries/envelopes.lib";
declare library_path4 "/libraries/maths.lib";
declare library_path5 "/libraries/platform.lib";
declare library_path6 "/libraries/basics.lib";
declare library_path7 "/libraries/signals.lib";
declare basics_lib_name "Faust Basic Element Library";
declare basics_lib_version "0.8";
declare envelopes_lib_adsre_author "Julius O. Smith III";
declare envelopes_lib_adsre_licence "STK-4.3";
declare envelopes_lib_author "GRAME";
declare envelopes_lib_copyright "GRAME";
declare envelopes_lib_license "LGPL with exception";
declare envelopes_lib_name "Faust Envelope Library";
declare envelopes_lib_version "0.2";
declare filename "FaustDSP";
declare filters_lib_fir_author "Julius O. Smith III";
declare filters_lib_fir_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_fir_license "MIT-style STK-4.3 license";
declare filters_lib_iir_author "Julius O. Smith III";
declare filters_lib_iir_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_iir_license "MIT-style STK-4.3 license";
declare filters_lib_lowpass0_highpass1 "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_name "Faust Filters Library";
declare filters_lib_resonbp_author "Julius O. Smith III";
declare filters_lib_resonbp_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_resonbp_license "MIT-style STK-4.3 license";
declare filters_lib_tf2_author "Julius O. Smith III";
declare filters_lib_tf2_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_tf2_license "MIT-style STK-4.3 license";
declare filters_lib_tf2s_author "Julius O. Smith III";
declare filters_lib_tf2s_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_tf2s_license "MIT-style STK-4.3 license";
declare filters_lib_version "0.3";
declare maths_lib_author "GRAME";
declare maths_lib_copyright "GRAME";
declare maths_lib_license "LGPL with exception";
declare maths_lib_name "Faust Math Library";
declare maths_lib_version "2.5";
declare name "FaustDSP";
declare noises_lib_name "Faust Noise Generator Library";
declare noises_lib_version "0.4";
declare platform_lib_name "Generic Platform Library";
declare platform_lib_version "0.2";
declare signals_lib_name "Faust Signal Routing Library";
declare signals_lib_version "0.3";
ID_0 = _, 12345;
ID_1 = (ID_0 : +);
ID_2 = _, 1103515245;
ID_3 = (ID_2 : *);
ID_4 = ID_1 ~ ID_3;
ID_5 = ID_4, 2.1474836e+09f;
ID_6 = (ID_5 : /);
ID_7 = ID_6, 0.2f;
ID_8 = ID_7 : *;
ID_9 = button("gate");
ID_10 = ID_9, 0;
ID_11 = (ID_10 : >);
ID_12 = _, ID_11;
ID_13 = (ID_12 : *);
ID_14 = + ~ ID_13;
ID_15 = (ID_11 : ID_14);
ID_16 = hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f);
ID_17 = fconstant(int fSamplingFreq, <math.h>);
ID_18 = 1.0f, ID_17;
ID_19 = (ID_18 : max);
ID_20 = 1.92e+05f, ID_19;
ID_21 = (ID_20 : min);
ID_22 = ID_16, ID_21;
ID_23 = ID_22 : *;
ID_24 = (ID_23 : int);
ID_25 = ID_15, ID_24;
ID_26 = (ID_25 : <);
ID_27 = _, mem;
ID_28 = ID_27 : -;
ID_29 = _, 0;
ID_30 = (ID_29 : >);
ID_31 = ID_30, _;
ID_32 = ID_31 : *;
ID_33 = ID_28 <: ID_32;
ID_34 = _ <: ID_33;
ID_35 = (ID_11 : ID_34);
ID_36 = ID_26, ID_35;
ID_37 = (ID_36 : |);
ID_38 = (ID_11 : float);
ID_39 = 0, ID_38;
ID_40 = (ID_39 : *);
ID_41 = ID_40, ID_11;
ID_42 = ID_37, ID_41;
ID_43 = (ID_42 : select2);
ID_44 = 0.0f, ID_43;
ID_45 = ID_11, ID_44;
ID_46 = ID_45 : select2;
ID_47 = (ID_46 : \(x11).(\(x12).(((1.0f,(((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(-1.0f,((((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : /),1.0f : select2),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min : float) : *) : / : exp),0.0f : select2) : -),x11 : *),((((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(-1.0f,((((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : /),1.0f : select2),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min : float) : *) : / : exp),0.0f : select2),x12 : *) : +)~_));
ID_48 = hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f);
ID_49 = ID_48, 8000;
ID_50 = (ID_49 : *);
ID_51 = ID_47, ID_50;
ID_52 = (ID_51 : *);
ID_53 = hslider("freq", 55.0f, 2e+01f, 1.5e+03f, 0.001f);
ID_54 = ID_52, ID_53;
ID_55 = (ID_54 : +);
ID_56 = 6.2831855f, ID_55;
ID_57 = (ID_56 : *);
ID_58 = ID_57, 0.5f;
ID_59 = (ID_58 : *);
ID_60 = ID_59, ID_21;
ID_61 = ID_60 : /;
ID_62 = (ID_61 : tan);
ID_63 = 1, ID_62;
ID_64 = (ID_63 : /);
ID_65 = ID_64, ID_64;
ID_66 = (ID_65 : *);
ID_67 = 1, ID_66;
ID_68 = (ID_67 : -);
ID_69 = 2, ID_68;
ID_70 = (ID_69 : *);
ID_71 = 0.33333334f, ID_64;
ID_72 = (ID_71 : *);
ID_73 = 1, ID_72;
ID_74 = (ID_73 : +);
ID_75 = ID_74, ID_66;
ID_76 = (ID_75 : +);
ID_77 = ID_70, ID_76;
ID_78 = (ID_77 : /);
ID_79 = _, ID_78;
ID_80 = (ID_79 : *);
ID_81 = _, 1;
ID_82 = ID_81 : @;
ID_83 = (ID_46 : \(x13).(\(x14).(((1.0f,(((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(-1.0f,((((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : /),1.0f : select2),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min : float) : *) : / : exp),0.0f : select2) : -),x13 : *),((((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(-1.0f,((((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : /),1.0f : select2),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min : float) : *) : / : exp),0.0f : select2),x14 : *) : +)~_));
ID_84 = ID_83, ID_50;
ID_85 = (ID_84 : *);
ID_86 = ID_85, ID_53;
ID_87 = (ID_86 : +);
ID_88 = 6.2831855f, ID_87;
ID_89 = (ID_88 : *);
ID_90 = ID_89, 0.5f;
ID_91 = (ID_90 : *);
ID_92 = ID_91, ID_21;
ID_93 = ID_92 : /;
ID_94 = (ID_93 : tan);
ID_95 = 1, ID_94;
ID_96 = (ID_95 : /);
ID_97 = 0.33333334f, ID_96;
ID_98 = (ID_97 : *);
ID_99 = 1, ID_98;
ID_100 = (ID_99 : -);
ID_101 = ID_96, ID_96;
ID_102 = (ID_101 : *);
ID_103 = ID_100, ID_102;
ID_104 = (ID_103 : +);
ID_105 = (ID_99 : +);
ID_106 = ID_105, ID_102;
ID_107 = (ID_106 : +);
ID_108 = ID_104, ID_107;
ID_109 = (ID_108 : /);
ID_110 = _, ID_109;
ID_111 = ID_110 : *;
ID_112 = (ID_82 : ID_111);
ID_113 = ID_80, ID_112;
ID_114 = ID_113 :> _;
ID_115 = (_ <: ID_114);
ID_116 = \(x17).(\(x18).(x18,x17 : -)) ~ ID_115;
ID_117 = 0.7f, ID_64;
ID_118 = (ID_117 : *);
ID_119 = 0, ID_118;
ID_120 = (ID_119 : +);
ID_121 = 0, ID_66;
ID_122 = (ID_121 : *);
ID_123 = ID_120, ID_122;
ID_124 = (ID_123 : +);
ID_125 = ID_124, ID_76;
ID_126 = (ID_125 : /);
ID_127 = _, ID_126;
ID_128 = (ID_127 : *);
ID_129 = ID_29 : *;
ID_130 = (ID_82 : ID_129);
ID_131 = _, 2;
ID_132 = ID_131 : @;
ID_133 = (ID_46 : \(x15).(\(x16).(((1.0f,(((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(-1.0f,((((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : /),1.0f : select2),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min : float) : *) : / : exp),0.0f : select2) : -),x15 : *),((((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(-1.0f,((((((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(((button("gate"),0 : >),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("freqDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("freqAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : /),1.0f : select2),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min : float) : *) : / : exp),0.0f : select2),x16 : *) : +)~_));
ID_134 = ID_133, ID_50;
ID_135 = (ID_134 : *);
ID_136 = ID_135, ID_53;
ID_137 = (ID_136 : +);
ID_138 = 6.2831855f, ID_137;
ID_139 = (ID_138 : *);
ID_140 = ID_139, 0.5f;
ID_141 = (ID_140 : *);
ID_142 = ID_141, ID_21;
ID_143 = ID_142 : /;
ID_144 = (ID_143 : tan);
ID_145 = 1, ID_144;
ID_146 = (ID_145 : /);
ID_147 = 0.7f, ID_146;
ID_148 = (ID_147 : *);
ID_149 = 0, ID_148;
ID_150 = (ID_149 : -);
ID_151 = ID_146, ID_146;
ID_152 = (ID_151 : *);
ID_153 = 0, ID_152;
ID_154 = (ID_153 : *);
ID_155 = ID_150, ID_154;
ID_156 = (ID_155 : +);
ID_157 = 0.33333334f, ID_146;
ID_158 = (ID_157 : *);
ID_159 = 1, ID_158;
ID_160 = (ID_159 : +);
ID_161 = ID_160, ID_152;
ID_162 = (ID_161 : +);
ID_163 = ID_156, ID_162;
ID_164 = (ID_163 : /);
ID_165 = _, ID_164;
ID_166 = ID_165 : *;
ID_167 = (ID_132 : ID_166);
ID_168 = ID_130, ID_167;
ID_169 = ID_128, ID_168;
ID_170 = ID_169 :> _;
ID_171 = _ <: ID_170;
ID_172 = ID_116 : ID_171;
ID_173 = hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f);
ID_174 = ID_173, ID_21;
ID_175 = ID_174 : *;
ID_176 = (ID_175 : int);
ID_177 = ID_15, ID_176;
ID_178 = (ID_177 : <);
ID_179 = ID_178, ID_35;
ID_180 = (ID_179 : |);
ID_181 = ID_180, ID_41;
ID_182 = (ID_181 : select2);
ID_183 = 0.0f, ID_182;
ID_184 = ID_11, ID_183;
ID_185 = ID_184 : select2;
ID_186 = (ID_185 : \(x19).(\(x20).(((1.0f,(((((button("gate"),0 : >),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(-1.0f,((((((button("gate"),0 : >),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(((button("gate"),0 : >),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : /),1.0f : select2),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min : float) : *) : / : exp),0.0f : select2) : -),x19 : *),((((((button("gate"),0 : >),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(-1.0f,((((((button("gate"),0 : >),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : / : abs),1.1920929e-07f : <),(((button("gate"),0 : >),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),((((button("gate"),0 : > : +~(_,(button("gate"),0 : >) : *)),(hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : * : int) : <),(button("gate"),0 : > : _<:_,mem : -<:(_,0 : >),_ : *) : |),hslider("ampDec", 0.1f, 0.0f, 1.0f, 0.001f),hslider("ampAtt", 0.01f, 0.0f, 1.0f, 0.001f) : select2) : select2),6.91f : /),1.0f : select2),(1.92e+05f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min : float) : *) : / : exp),0.0f : select2),x20 : *) : +)~_));
ID_187 = _, ID_186;
ID_188 = ID_187 : *;
ID_189 = ID_172 : ID_188;
ID_190 = (ID_8 : ID_189);
ID_191 = hslider("gain", 0.5f, 0.0f, 1.0f, 0.001f);
ID_192 = ID_190, ID_191;
ID_193 = ID_192 : *;
process = ID_193;