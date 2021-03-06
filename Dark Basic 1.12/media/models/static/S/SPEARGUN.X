xof 0302txt 0064
//  DV8000 Copyright Viewpoint Datalabs Intl., Inc.
//  www.viewpoint.com, 800-643-8303, 801-229-3333
//  for Microsoft Corporation DirectX format only
//  see license agreement for description of rights

template Header {
	<3D82AB43-62DA-11cf-AB39-0020AF71E433>
	WORD major;
	WORD minor;
	DWORD flags;
}

template ColorRGBA {
	<35FF44E0-6C7C-11cf-8F52-0040333594A3>
	FLOAT red;
	FLOAT green;
	FLOAT blue;
	FLOAT alpha;
}

template ColorRGB {
	<D3E16E81-7835-11cf-8F52-0040333594A3>
	FLOAT red;  
	FLOAT green;
	FLOAT blue; 
}

template Material {
	<3D82AB4D-62DA-11cf-AB39-0020AF71E433>
	ColorRGBA faceColor;
	FLOAT power;
	ColorRGB specularColor;
	ColorRGB emissiveColor;
	[...]
}

template Vector {
	<3D82AB5E-62DA-11cf-AB39-0020AF71E433>
	FLOAT x;
	FLOAT y;
	FLOAT z;
}

template MeshFace {
	<3D82AB5F-62DA-11cf-AB39-0020AF71E433>
	DWORD nFaceVertexIndices;
	array DWORD faceVertexIndices[nFaceVertexIndices];
}

template Mesh {
	<3D82AB44-62DA-11cf-AB39-0020AF71E433>
	DWORD nVertices;
	array Vector vertices[nVertices];
	DWORD nFaces;
	array MeshFace faces[nFaces];
	[...]
}

template MeshMaterialList {
	<F6F23F42-7686-11cf-8F52-0040333594A3>
	DWORD nMaterials;
	DWORD nFaceIndexes;
	array DWORD faceIndexes[nFaceIndexes];
	[Material]
}

template Frame {
	<3D82AB46-62DA-11cf-AB39-0020AF71E433>
	[...]
}

template AnimationKey {
	<10DD46A8-775B-11cf-8F52-0040333594A3>
	DWORD keyType;
	DWORD nKeys;
	array TimedFloatKeys keys[nKeys];
}

template Animation {
	<3D82AB4F-62DA-11cf-AB39-0020AF71E433>
	[...]
}

	template AnimationSet {
	 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
	 [Animation]
}


Header {
	 1;
	 0;
	 1;
}

Frame Root{
	Frame arrow {
		Mesh mesh-arrow {
			58;
			-0.009761;-0.015615;-0.712190;,
			-0.011360;-0.005448;-0.715631;,
			-0.008162;-0.005448;-0.715631;,
			-0.008162;-0.005448;-0.722142;,
			-0.011360;-0.005448;-0.722142;,
			-0.007219;0.014887;-0.753027;,
			-0.012303;0.014887;-0.753027;,
			-0.007219;0.025055;-0.753027;,
			-0.012303;0.025055;-0.753027;,
			-0.008162;0.045390;-0.721456;,
			-0.011360;0.045390;-0.721456;,
			-0.009761;0.055558;-0.710132;,
			-0.008162;0.045390;-0.715631;,
			-0.011360;0.045390;-0.715631;,
			-0.007219;0.019740;-0.735966;,
			-0.012303;0.019740;-0.735966;,
			-0.007058;0.017402;-0.583057;,
			-0.006245;0.019904;-0.583057;,
			-0.006245;0.019904;-0.698722;,
			-0.007058;0.017402;-0.698722;,
			-0.009186;0.015856;-0.583057;,
			-0.009186;0.015856;-0.698722;,
			-0.011817;0.015856;-0.583057;,
			-0.011817;0.015856;-0.698722;,
			-0.013945;0.017402;-0.583057;,
			-0.013945;0.017402;-0.698722;,
			-0.014758;0.019904;-0.583057;,
			-0.014758;0.019904;-0.698722;,
			-0.013945;0.022406;-0.583057;,
			-0.013945;0.022406;-0.698722;,
			-0.011817;0.023952;-0.583057;,
			-0.011817;0.023952;-0.698722;,
			-0.009186;0.023952;-0.583057;,
			-0.009186;0.023952;-0.698722;,
			-0.007058;0.022406;-0.583057;,
			-0.007058;0.022406;-0.698722;,
			-0.010502;0.019904;-0.583057;,
			-0.005394;0.019904;-0.700054;,
			-0.006369;0.016901;-0.700054;,
			-0.008923;0.015046;-0.700054;,
			-0.012080;0.015046;-0.700054;,
			-0.014634;0.016901;-0.700054;,
			-0.015609;0.019904;-0.700054;,
			-0.014634;0.022906;-0.700054;,
			-0.012080;0.024762;-0.700054;,
			-0.008923;0.024762;-0.700054;,
			-0.006369;0.022906;-0.700054;,
			-0.005394;0.019904;-0.754803;,
			-0.006369;0.016901;-0.754803;,
			-0.008923;0.015046;-0.754803;,
			-0.012080;0.015046;-0.754803;,
			-0.014634;0.016901;-0.754803;,
			-0.015609;0.019904;-0.754803;,
			-0.014634;0.022906;-0.754803;,
			-0.012080;0.024762;-0.754803;,
			-0.008923;0.024762;-0.754803;,
			-0.006369;0.022906;-0.754803;,
			-0.010502;0.019904;-0.794761;;

			108;
			3; 2,1,0;,
			3; 0,4,3;,
			3; 3,6,5;,
			3; 3,4,6;,
			3; 5,8,7;,
			3; 5,6,8;,
			3; 7,10,9;,
			3; 7,8,10;,
			3; 9,10,11;,
			3; 11,13,12;,
			3; 12,15,14;,
			3; 12,13,15;,
			3; 14,1,2;,
			3; 14,15,1;,
			3; 9,11,12;,
			3; 2,0,3;,
			3; 14,2,3;,
			3; 14,3,5;,
			3; 9,12,14;,
			3; 7,9,14;,
			3; 7,14,5;,
			3; 10,13,11;,
			3; 1,4,0;,
			3; 15,4,1;,
			3; 15,6,4;,
			3; 10,15,13;,
			3; 8,15,10;,
			3; 8,6,15;,
			3; 18,17,16;,
			3; 18,16,19;,
			3; 19,16,20;,
			3; 19,20,21;,
			3; 21,20,22;,
			3; 21,22,23;,
			3; 23,22,24;,
			3; 23,24,25;,
			3; 25,24,26;,
			3; 25,26,27;,
			3; 27,26,28;,
			3; 27,28,29;,
			3; 29,28,30;,
			3; 29,30,31;,
			3; 31,30,32;,
			3; 31,32,33;,
			3; 33,32,34;,
			3; 33,34,35;,
			3; 35,34,17;,
			3; 35,17,18;,
			3; 36,16,17;,
			3; 36,20,16;,
			3; 36,22,20;,
			3; 36,24,22;,
			3; 36,26,24;,
			3; 36,28,26;,
			3; 36,30,28;,
			3; 36,32,30;,
			3; 36,34,32;,
			3; 36,17,34;,
			3; 19,37,18;,
			3; 37,19,38;,
			3; 21,38,19;,
			3; 38,21,39;,
			3; 23,39,21;,
			3; 39,23,40;,
			3; 25,40,23;,
			3; 40,25,41;,
			3; 27,41,25;,
			3; 41,27,42;,
			3; 29,42,27;,
			3; 42,29,43;,
			3; 31,43,29;,
			3; 43,31,44;,
			3; 33,44,31;,
			3; 44,33,45;,
			3; 35,45,33;,
			3; 45,35,46;,
			3; 18,46,35;,
			3; 46,18,37;,
			3; 38,47,37;,
			3; 47,38,48;,
			3; 39,48,38;,
			3; 48,39,49;,
			3; 40,49,39;,
			3; 49,40,50;,
			3; 41,50,40;,
			3; 50,41,51;,
			3; 42,51,41;,
			3; 51,42,52;,
			3; 43,52,42;,
			3; 52,43,53;,
			3; 44,53,43;,
			3; 53,44,54;,
			3; 45,54,44;,
			3; 54,45,55;,
			3; 46,55,45;,
			3; 55,46,56;,
			3; 37,56,46;,
			3; 56,37,47;,
			3; 48,57,47;,
			3; 49,57,48;,
			3; 50,57,49;,
			3; 51,57,50;,
			3; 52,57,51;,
			3; 53,57,52;,
			3; 54,57,53;,
			3; 55,57,54;,
			3; 56,57,55;,
			3; 47,57,56;;
			MeshMaterialList {
				1;
			108;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0;;
				Material silver {
					0.616300;0.616300;0.616300;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame gun {
		Mesh mesh-gun {
			189;
			0.000000;-0.094539;0.138641;,
			-0.021311;-0.094539;0.138641;,
			-0.005247;-0.115831;0.138499;,
			-0.016065;-0.115831;0.138499;,
			0.000000;-0.026662;0.108036;,
			-0.021311;-0.026662;0.108036;,
			-0.010656;-0.026639;0.093236;,
			-0.008985;-0.021037;0.096365;,
			-0.012327;-0.021037;0.096365;,
			-0.007559;-0.016200;0.098406;,
			-0.013752;-0.016200;0.098406;,
			-0.006063;-0.012001;0.099541;,
			-0.015249;-0.012001;0.099541;,
			-0.004292;-0.008312;0.099952;,
			-0.017019;-0.008312;0.099952;,
			-0.002774;-0.005006;0.099820;,
			-0.018537;-0.005006;0.099820;,
			-0.000999;-0.001955;0.099326;,
			-0.020312;-0.001955;0.099326;,
			0.000000;0.000968;0.098650;,
			-0.021311;0.000968;0.098650;,
			-0.002736;0.000000;0.159834;,
			-0.018575;0.000000;0.159834;,
			-0.002736;-0.001309;0.159437;,
			-0.018575;-0.001309;0.159437;,
			-0.002736;-0.001826;0.158510;,
			-0.018575;-0.001826;0.158510;,
			-0.002736;-0.002145;0.157451;,
			-0.018575;-0.002145;0.157451;,
			-0.002736;-0.002860;0.156657;,
			-0.018575;-0.002860;0.156657;,
			-0.002736;-0.004565;0.156524;,
			-0.018575;-0.004565;0.156524;,
			-0.002736;-0.007853;0.157451;,
			-0.018575;-0.007853;0.157451;,
			-0.002736;-0.013319;0.159834;,
			-0.018575;-0.013319;0.159834;,
			-0.002736;-0.020922;0.164557;,
			-0.018575;-0.020922;0.164557;,
			-0.003521;-0.030118;0.171563;,
			-0.017790;-0.030118;0.171563;,
			-0.001226;-0.040751;0.179835;,
			-0.020085;-0.040751;0.179835;,
			0.000000;-0.052667;0.188355;,
			-0.021311;-0.052667;0.188355;,
			0.000000;-0.065707;0.196107;,
			-0.021311;-0.065707;0.196107;,
			0.000000;-0.079717;0.202074;,
			-0.021311;-0.079717;0.202074;,
			0.000000;-0.094539;0.205239;,
			-0.021311;-0.094539;0.205239;,
			-0.000524;-0.019803;0.125902;,
			-0.020503;-0.019803;0.125902;,
			-0.000524;0.000591;0.111697;,
			-0.020503;0.000591;0.111697;,
			-0.000524;-0.043313;0.118435;,
			-0.020503;-0.043313;0.118435;,
			-0.000524;-0.043313;0.074790;,
			-0.020503;-0.043313;0.074790;,
			-0.000524;-0.026639;0.053278;,
			-0.020503;-0.026639;0.053278;,
			-0.000524;0.003144;0.053379;,
			-0.020503;0.003144;0.053379;,
			-0.000524;-0.006871;0.066682;,
			-0.000524;-0.036383;0.080350;,
			-0.000524;-0.026639;0.066597;,
			-0.000524;-0.006871;0.107685;,
			-0.000524;-0.021627;0.119529;,
			-0.000524;-0.036874;0.112468;,
			-0.020503;-0.026639;0.066597;,
			-0.020503;-0.006871;0.066682;,
			-0.020503;-0.036383;0.080350;,
			-0.020503;-0.006871;0.107685;,
			-0.020503;-0.036874;0.112468;,
			-0.020503;-0.021627;0.119529;,
			0.006399;0.031710;0.150277;,
			0.010367;0.019498;0.156673;,
			-0.010410;0.019498;0.156673;,
			-0.003989;0.040762;0.141540;,
			-0.016830;0.040762;0.141540;,
			-0.027219;0.031710;0.150277;,
			-0.031187;0.019498;0.156673;,
			-0.027219;0.007285;0.160246;,
			-0.016830;-0.000263;0.160108;,
			-0.003989;-0.000263;0.160108;,
			0.006399;0.007285;0.160246;,
			-0.000284;0.026963;-0.532909;,
			0.002106;0.019606;-0.532909;,
			-0.006542;0.032416;-0.532909;,
			-0.014278;0.032416;-0.532909;,
			-0.020536;0.026963;-0.532909;,
			-0.022926;0.019606;-0.532909;,
			-0.020536;0.012249;-0.532909;,
			-0.014278;0.007702;-0.532909;,
			-0.006542;0.007703;-0.532909;,
			-0.000284;0.012249;-0.532909;,
			-0.005096;0.019701;-0.625646;,
			-0.006111;0.022824;-0.625646;,
			-0.010410;0.019701;-0.625646;,
			-0.008768;0.025139;-0.625646;,
			-0.012052;0.025139;-0.625646;,
			-0.014709;0.022824;-0.625646;,
			-0.015723;0.019701;-0.625646;,
			-0.014709;0.016578;-0.625646;,
			-0.012052;0.014648;-0.625646;,
			-0.008768;0.014648;-0.625646;,
			-0.006111;0.016578;-0.625646;,
			0.001842;0.028473;-0.534254;,
			0.004735;0.019571;-0.534254;,
			-0.005730;0.035072;-0.534254;,
			-0.015090;0.035072;-0.534254;,
			-0.022662;0.028473;-0.534254;,
			-0.025555;0.019571;-0.534254;,
			-0.022662;0.010670;-0.534254;,
			-0.015090;0.005168;-0.534254;,
			-0.005730;0.005168;-0.534254;,
			0.001842;0.010670;-0.534254;,
			0.001842;0.028473;-0.540981;,
			0.004735;0.019571;-0.540981;,
			-0.005730;0.035072;-0.540981;,
			-0.015090;0.035072;-0.540981;,
			-0.022662;0.028473;-0.540981;,
			-0.025555;0.019571;-0.540981;,
			-0.022662;0.010670;-0.540981;,
			-0.015090;0.005168;-0.540981;,
			-0.005730;0.005168;-0.540981;,
			0.001842;0.010670;-0.540981;,
			-0.003927;0.024375;-0.589219;,
			-0.002397;0.019665;-0.589219;,
			-0.007934;0.027866;-0.589219;,
			-0.012886;0.027866;-0.589219;,
			-0.016893;0.024375;-0.589219;,
			-0.018423;0.019665;-0.589219;,
			-0.016893;0.014956;-0.589219;,
			-0.012886;0.012045;-0.589219;,
			-0.007934;0.012045;-0.589219;,
			-0.003927;0.014956;-0.589219;,
			-0.006111;0.022824;-0.591057;,
			-0.005096;0.019701;-0.591057;,
			-0.008768;0.025139;-0.591057;,
			-0.012052;0.025139;-0.591057;,
			-0.014709;0.022824;-0.591057;,
			-0.015723;0.019701;-0.591057;,
			-0.014709;0.016578;-0.591057;,
			-0.012052;0.014648;-0.591057;,
			-0.008768;0.014648;-0.591057;,
			-0.006111;0.016578;-0.591057;,
			-0.003256;0.032102;0.173153;,
			-0.018055;0.032102;0.173153;,
			-0.003256;0.039958;0.138656;,
			-0.018055;0.039958;0.138656;,
			0.000000;0.006505;0.180325;,
			-0.021311;0.006505;0.180325;,
			0.000000;0.000000;0.159834;,
			-0.021311;0.000000;0.159834;,
			-0.003379;-0.002530;-0.557581;,
			-0.018031;-0.002530;-0.557581;,
			-0.003379;-0.002530;-0.527431;,
			-0.018031;-0.002530;-0.527431;,
			-0.003379;0.000000;-0.557581;,
			-0.018031;0.000000;-0.557581;,
			-0.003379;0.000000;-0.543161;,
			-0.018031;0.000000;-0.543161;,
			-0.003379;0.013319;-0.532780;,
			-0.018031;0.013319;-0.532780;,
			-0.003379;0.013319;-0.507069;,
			-0.018031;0.013319;-0.507069;,
			-0.004955;0.023620;-0.623051;,
			-0.003687;0.019716;-0.623051;,
			-0.010328;0.019716;-0.623051;,
			-0.008276;0.026032;-0.623051;,
			-0.012380;0.026032;-0.623051;,
			-0.015701;0.023620;-0.623051;,
			-0.016969;0.019716;-0.623051;,
			-0.015701;0.015813;-0.623051;,
			-0.012380;0.013401;-0.623051;,
			-0.008276;0.013401;-0.623051;,
			-0.004955;0.015813;-0.623051;,
			-0.004955;0.023620;-0.629651;,
			-0.003687;0.019716;-0.629651;,
			-0.008276;0.026032;-0.629651;,
			-0.012380;0.026032;-0.629651;,
			-0.015701;0.023620;-0.629651;,
			-0.016969;0.019716;-0.629651;,
			-0.015701;0.015813;-0.629651;,
			-0.012380;0.013401;-0.629651;,
			-0.008276;0.013401;-0.629651;,
			-0.004955;0.015813;-0.629651;,
			-0.010328;0.019716;-0.629651;;

			358;
			3; 2,1,0;,
			3; 2,3,1;,
			3; 0,5,4;,
			3; 0,1,5;,
			3; 4,5,6;,
			3; 6,8,7;,
			3; 7,10,9;,
			3; 7,8,10;,
			3; 9,12,11;,
			3; 9,10,12;,
			3; 11,14,13;,
			3; 11,12,14;,
			3; 13,16,15;,
			3; 13,14,16;,
			3; 15,18,17;,
			3; 15,16,18;,
			3; 17,20,19;,
			3; 17,18,20;,
			3; 19,22,21;,
			3; 19,20,22;,
			3; 21,24,23;,
			3; 21,22,24;,
			3; 23,26,25;,
			3; 23,24,26;,
			3; 25,28,27;,
			3; 25,26,28;,
			3; 27,30,29;,
			3; 27,28,30;,
			3; 29,32,31;,
			3; 29,30,32;,
			3; 31,34,33;,
			3; 31,32,34;,
			3; 33,36,35;,
			3; 33,34,36;,
			3; 35,38,37;,
			3; 35,36,38;,
			3; 37,40,39;,
			3; 37,38,40;,
			3; 39,42,41;,
			3; 39,40,42;,
			3; 41,44,43;,
			3; 41,42,44;,
			3; 43,46,45;,
			3; 43,44,46;,
			3; 45,48,47;,
			3; 45,46,48;,
			3; 47,50,49;,
			3; 47,48,50;,
			3; 49,3,2;,
			3; 49,50,3;,
			3; 4,6,7;,
			3; 49,2,0;,
			3; 19,21,23;,
			3; 19,23,25;,
			3; 19,25,27;,
			3; 19,27,29;,
			3; 17,19,29;,
			3; 47,49,0;,
			3; 15,17,29;,
			3; 45,47,0;,
			3; 15,29,31;,
			3; 43,45,0;,
			3; 43,0,4;,
			3; 41,43,4;,
			3; 39,41,4;,
			3; 37,39,4;,
			3; 35,37,4;,
			3; 33,35,4;,
			3; 13,15,31;,
			3; 4,7,9;,
			3; 31,33,4;,
			3; 13,31,4;,
			3; 11,13,4;,
			3; 11,4,9;,
			3; 5,8,6;,
			3; 50,1,3;,
			3; 20,24,22;,
			3; 20,26,24;,
			3; 20,28,26;,
			3; 20,30,28;,
			3; 18,30,20;,
			3; 48,1,50;,
			3; 16,30,18;,
			3; 46,1,48;,
			3; 16,32,30;,
			3; 44,1,46;,
			3; 44,5,1;,
			3; 42,5,44;,
			3; 40,5,42;,
			3; 38,5,40;,
			3; 36,5,38;,
			3; 34,5,36;,
			3; 14,32,16;,
			3; 5,10,8;,
			3; 32,5,34;,
			3; 14,5,32;,
			3; 12,5,14;,
			3; 12,10,5;,
			3; 53,52,51;,
			3; 53,54,52;,
			3; 51,56,55;,
			3; 51,52,56;,
			3; 55,58,57;,
			3; 55,56,58;,
			3; 57,60,59;,
			3; 57,58,60;,
			3; 59,62,61;,
			3; 59,60,62;,
			3; 61,54,53;,
			3; 61,62,54;,
			3; 61,63,59;,
			3; 53,63,61;,
			3; 64,55,57;,
			3; 57,59,64;,
			3; 59,65,64;,
			3; 65,59,63;,
			3; 53,51,66;,
			3; 53,66,63;,
			3; 67,51,55;,
			3; 55,68,67;,
			3; 68,55,64;,
			3; 51,67,66;,
			3; 60,69,62;,
			3; 62,70,54;,
			3; 69,70,62;,
			3; 58,56,71;,
			3; 58,71,60;,
			3; 71,69,60;,
			3; 54,70,72;,
			3; 72,52,54;,
			3; 74,73,56;,
			3; 56,52,74;,
			3; 71,56,73;,
			3; 72,74,52;,
			3; 69,65,63;,
			3; 70,69,63;,
			3; 64,65,71;,
			3; 69,71,65;,
			3; 70,63,72;,
			3; 72,63,66;,
			3; 67,68,74;,
			3; 73,74,68;,
			3; 71,68,64;,
			3; 68,71,73;,
			3; 66,67,72;,
			3; 74,72,67;,
			3; 77,76,75;,
			3; 77,75,78;,
			3; 77,78,79;,
			3; 77,79,80;,
			3; 77,80,81;,
			3; 77,81,82;,
			3; 77,82,83;,
			3; 77,83,84;,
			3; 77,84,85;,
			3; 77,85,76;,
			3; 76,87,86;,
			3; 76,86,75;,
			3; 75,86,88;,
			3; 75,88,78;,
			3; 78,88,89;,
			3; 78,89,79;,
			3; 79,89,90;,
			3; 79,90,80;,
			3; 80,90,91;,
			3; 80,91,81;,
			3; 81,91,92;,
			3; 81,92,82;,
			3; 82,92,93;,
			3; 82,93,83;,
			3; 83,93,94;,
			3; 83,94,84;,
			3; 84,94,95;,
			3; 84,95,85;,
			3; 85,95,87;,
			3; 85,87,76;,
			3; 98,97,96;,
			3; 98,99,97;,
			3; 98,100,99;,
			3; 98,101,100;,
			3; 98,102,101;,
			3; 98,103,102;,
			3; 98,104,103;,
			3; 98,105,104;,
			3; 98,106,105;,
			3; 98,96,106;,
			3; 87,107,86;,
			3; 107,87,108;,
			3; 86,109,88;,
			3; 109,86,107;,
			3; 88,110,89;,
			3; 110,88,109;,
			3; 89,111,90;,
			3; 111,89,110;,
			3; 90,112,91;,
			3; 112,90,111;,
			3; 91,113,92;,
			3; 113,91,112;,
			3; 92,114,93;,
			3; 114,92,113;,
			3; 93,115,94;,
			3; 115,93,114;,
			3; 94,116,95;,
			3; 116,94,115;,
			3; 95,108,87;,
			3; 108,95,116;,
			3; 108,117,107;,
			3; 117,108,118;,
			3; 107,119,109;,
			3; 119,107,117;,
			3; 109,120,110;,
			3; 120,109,119;,
			3; 110,121,111;,
			3; 121,110,120;,
			3; 111,122,112;,
			3; 122,111,121;,
			3; 112,123,113;,
			3; 123,112,122;,
			3; 113,124,114;,
			3; 124,113,123;,
			3; 114,125,115;,
			3; 125,114,124;,
			3; 115,126,116;,
			3; 126,115,125;,
			3; 116,118,108;,
			3; 118,116,126;,
			3; 118,127,117;,
			3; 127,118,128;,
			3; 117,129,119;,
			3; 129,117,127;,
			3; 119,130,120;,
			3; 130,119,129;,
			3; 120,131,121;,
			3; 131,120,130;,
			3; 121,132,122;,
			3; 132,121,131;,
			3; 122,133,123;,
			3; 133,122,132;,
			3; 123,134,124;,
			3; 134,123,133;,
			3; 124,135,125;,
			3; 135,124,134;,
			3; 125,136,126;,
			3; 136,125,135;,
			3; 126,128,118;,
			3; 128,126,136;,
			3; 128,137,127;,
			3; 137,128,138;,
			3; 127,139,129;,
			3; 139,127,137;,
			3; 129,140,130;,
			3; 140,129,139;,
			3; 130,141,131;,
			3; 141,130,140;,
			3; 131,142,132;,
			3; 142,131,141;,
			3; 132,143,133;,
			3; 143,132,142;,
			3; 133,144,134;,
			3; 144,133,143;,
			3; 134,145,135;,
			3; 145,134,144;,
			3; 135,146,136;,
			3; 146,135,145;,
			3; 136,138,128;,
			3; 138,136,146;,
			3; 138,97,137;,
			3; 97,138,96;,
			3; 137,99,139;,
			3; 99,137,97;,
			3; 139,100,140;,
			3; 100,139,99;,
			3; 140,101,141;,
			3; 101,140,100;,
			3; 141,102,142;,
			3; 102,141,101;,
			3; 142,103,143;,
			3; 103,142,102;,
			3; 143,104,144;,
			3; 104,143,103;,
			3; 144,105,145;,
			3; 105,144,104;,
			3; 145,106,146;,
			3; 106,145,105;,
			3; 146,96,138;,
			3; 96,146,106;,
			3; 149,148,147;,
			3; 149,150,148;,
			3; 147,152,151;,
			3; 147,148,152;,
			3; 151,154,153;,
			3; 151,152,154;,
			3; 153,150,149;,
			3; 153,154,150;,
			3; 153,149,147;,
			3; 153,147,151;,
			3; 154,148,150;,
			3; 154,152,148;,
			3; 157,156,155;,
			3; 157,158,156;,
			3; 155,160,159;,
			3; 155,156,160;,
			3; 159,162,161;,
			3; 159,160,162;,
			3; 161,164,163;,
			3; 161,162,164;,
			3; 163,166,165;,
			3; 163,164,166;,
			3; 165,158,157;,
			3; 165,166,158;,
			3; 163,165,157;,
			3; 161,163,157;,
			3; 161,157,155;,
			3; 159,161,155;,
			3; 164,158,166;,
			3; 162,158,164;,
			3; 162,156,158;,
			3; 160,156,162;,
			3; 169,168,167;,
			3; 169,167,170;,
			3; 169,170,171;,
			3; 169,171,172;,
			3; 169,172,173;,
			3; 169,173,174;,
			3; 169,174,175;,
			3; 169,175,176;,
			3; 169,176,177;,
			3; 169,177,168;,
			3; 168,179,178;,
			3; 168,178,167;,
			3; 167,178,180;,
			3; 167,180,170;,
			3; 170,180,181;,
			3; 170,181,171;,
			3; 171,181,182;,
			3; 171,182,172;,
			3; 172,182,183;,
			3; 172,183,173;,
			3; 173,183,184;,
			3; 173,184,174;,
			3; 174,184,185;,
			3; 174,185,175;,
			3; 175,185,186;,
			3; 175,186,176;,
			3; 176,186,187;,
			3; 176,187,177;,
			3; 177,187,179;,
			3; 177,179,168;,
			3; 188,178,179;,
			3; 188,180,178;,
			3; 188,181,180;,
			3; 188,182,181;,
			3; 188,183,182;,
			3; 188,184,183;,
			3; 188,185,184;,
			3; 188,186,185;,
			3; 188,187,186;,
			3; 188,179,187;;
			MeshMaterialList {
				1;
			358;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0;;
				Material black {
					0.002000;0.002000;0.002000;1.000000;;
					157.360000;
					0.518400;0.518400;0.518400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

