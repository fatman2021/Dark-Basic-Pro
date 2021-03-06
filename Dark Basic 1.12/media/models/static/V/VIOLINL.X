xof 0302txt 0064
//  DV8135 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame BRIDGE01 {
		Mesh mesh-BRIDGE01 {
			8;
			-0.020333;0.001289;-0.088820;,
			0.017972;0.001289;-0.088820;,
			-0.020333;0.001289;-0.094453;,
			0.017972;0.001289;-0.094453;,
			0.017972;0.020914;-0.094453;,
			0.017972;0.020914;-0.088820;,
			-0.020333;0.020914;-0.094453;,
			-0.020333;0.020914;-0.088820;;

			12;
			3; 2,1,0;,
			3; 1,2,3;,
			3; 6,5,4;,
			3; 5,6,7;,
			3; 2,4,3;,
			3; 4,2,6;,
			3; 3,5,1;,
			3; 5,3,4;,
			3; 1,7,0;,
			3; 7,1,5;,
			3; 0,6,2;,
			3; 6,0,7;;
			MeshMaterialList {
				1;
			12;
				0,
				0,
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
				Material bone {
					0.900000;0.622900;0.227800;1.000000;;
					200.000000;
					0.461200;0.419300;0.267300;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame STRING_04 {
		Mesh mesh-STRING_04 {
			11;
			0.004958;0.015651;-0.152507;,
			0.006869;0.015012;-0.152507;,
			0.006098;0.015883;-0.152507;,
			0.006466;0.016987;-0.152507;,
			0.005095;0.021031;-0.092046;,
			0.007110;0.020961;-0.092046;,
			0.006163;0.022741;-0.092046;,
			0.003428;0.009005;0.182919;,
			0.004922;0.008505;0.182919;,
			0.004606;0.010048;0.182919;,
			0.004318;0.009186;0.182919;;

			18;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,1;,
			3; 1,5,4;,
			3; 1,4,0;,
			3; 0,4,6;,
			3; 0,6,3;,
			3; 3,6,5;,
			3; 3,5,1;,
			3; 5,8,7;,
			3; 5,7,4;,
			3; 4,7,9;,
			3; 4,9,6;,
			3; 6,9,8;,
			3; 6,8,5;,
			3; 10,7,8;,
			3; 10,9,7;,
			3; 10,8,9;;
			MeshMaterialList {
				1;
			18;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material bone {
					0.900000;0.622900;0.227800;1.000000;;
					200.000000;
					0.461200;0.419300;0.267300;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame STRING_03 {
		Mesh mesh-STRING_03 {
			11;
			-0.006925;0.016563;-0.152507;,
			-0.003496;0.017418;-0.152507;,
			-0.005457;0.017980;-0.152507;,
			-0.005952;0.019959;-0.152507;,
			-0.007273;0.021134;-0.091795;,
			-0.003741;0.021166;-0.091795;,
			-0.005534;0.024210;-0.091795;,
			-0.004833;0.009254;0.195060;,
			-0.003169;0.009669;0.195060;,
			-0.004361;0.010902;0.195060;,
			-0.004121;0.009942;0.195060;;

			18;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,1;,
			3; 1,5,4;,
			3; 1,4,0;,
			3; 0,4,6;,
			3; 0,6,3;,
			3; 3,6,5;,
			3; 3,5,1;,
			3; 5,8,7;,
			3; 5,7,4;,
			3; 4,7,9;,
			3; 4,9,6;,
			3; 6,9,8;,
			3; 6,8,5;,
			3; 10,7,8;,
			3; 10,9,7;,
			3; 10,8,9;;
			MeshMaterialList {
				1;
			18;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material bone {
					0.900000;0.622900;0.227800;1.000000;;
					200.000000;
					0.461200;0.419300;0.267300;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame STRING_02 {
		Mesh mesh-STRING_02 {
			11;
			-0.013448;0.014662;-0.152507;,
			-0.009691;0.015704;-0.152507;,
			-0.011871;0.016268;-0.152507;,
			-0.012473;0.018437;-0.152507;,
			-0.013850;0.021158;-0.091831;,
			-0.009951;0.021261;-0.091831;,
			-0.011990;0.024585;-0.091831;,
			-0.008542;0.009526;0.171441;,
			-0.006522;0.010087;0.171441;,
			-0.008017;0.011556;0.171441;,
			-0.007694;0.010390;0.171441;;

			18;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,1;,
			3; 1,5,4;,
			3; 1,4,0;,
			3; 0,4,6;,
			3; 0,6,3;,
			3; 3,6,5;,
			3; 3,5,1;,
			3; 5,8,7;,
			3; 5,7,4;,
			3; 4,7,9;,
			3; 4,9,6;,
			3; 6,9,8;,
			3; 6,8,5;,
			3; 10,7,8;,
			3; 10,9,7;,
			3; 10,8,9;;
			MeshMaterialList {
				1;
			18;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material bone {
					0.900000;0.622900;0.227800;1.000000;;
					200.000000;
					0.461200;0.419300;0.267300;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame STRING_01 {
		Mesh mesh-STRING_01 {
			11;
			-0.000314;0.017169;-0.152507;,
			0.002208;0.016423;-0.152507;,
			0.001163;0.017524;-0.152507;,
			0.001593;0.018979;-0.152507;,
			-0.000118;0.020976;-0.091797;,
			0.002511;0.020953;-0.091797;,
			0.001216;0.023241;-0.091797;,
			-0.001098;0.010072;0.205244;,
			0.000784;0.009516;0.205244;,
			0.000324;0.011424;0.205244;,
			0.000003;0.010337;0.205244;;

			18;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,1;,
			3; 1,5,4;,
			3; 1,4,0;,
			3; 0,4,6;,
			3; 0,6,3;,
			3; 3,6,5;,
			3; 3,5,1;,
			3; 5,8,7;,
			3; 5,7,4;,
			3; 4,7,9;,
			3; 4,9,6;,
			3; 6,9,8;,
			3; 6,8,5;,
			3; 10,7,8;,
			3; 10,9,7;,
			3; 10,8,9;;
			MeshMaterialList {
				1;
			18;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material bone {
					0.900000;0.622900;0.227800;1.000000;;
					200.000000;
					0.461200;0.419300;0.267300;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame SOUNDBOA01 {
		Mesh mesh-SOUNDBOA01 {
			12;
			-0.013227;0.014431;-0.064418;,
			-0.019779;0.003307;-0.064411;,
			-0.002003;0.003307;-0.064436;,
			-0.002003;0.017065;-0.064436;,
			0.009221;0.014431;-0.064453;,
			0.015774;0.003307;-0.064461;,
			-0.009085;0.003307;0.175995;,
			-0.001599;0.003307;0.175982;,
			-0.009135;0.011829;0.175990;,
			-0.001599;0.010793;0.175982;,
			0.005757;0.011563;0.175973;,
			0.005887;0.003307;0.175970;;

			20;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,4;,
			3; 2,4,5;,
			3; 2,7,6;,
			3; 2,6,1;,
			3; 1,6,8;,
			3; 1,8,0;,
			3; 0,8,9;,
			3; 0,9,3;,
			3; 3,9,10;,
			3; 3,10,4;,
			3; 4,10,11;,
			3; 4,11,5;,
			3; 5,11,7;,
			3; 5,7,2;,
			3; 7,8,6;,
			3; 7,9,8;,
			3; 7,10,9;,
			3; 7,11,10;;
			MeshMaterialList {
				1;
			20;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material brown {
					0.085700;0.014700;0.000000;1.000000;;
					65.890000;
					0.163300;0.024000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame CHIN_RES01 {
		Mesh mesh-CHIN_RES01 {
			14;
			-0.015124;0.001828;-0.202353;,
			-0.003792;0.001828;-0.246434;,
			-0.034313;0.001828;-0.227582;,
			-0.027740;0.001828;-0.198927;,
			-0.074147;0.001828;-0.227137;,
			-0.073177;0.001828;-0.235081;,
			-0.008661;0.001828;-0.250000;,
			-0.015124;0.010243;-0.202353;,
			-0.003792;0.010243;-0.246434;,
			-0.027740;0.010243;-0.198927;,
			-0.074147;0.010243;-0.227137;,
			-0.073177;0.010243;-0.235081;,
			-0.008661;0.010243;-0.250000;,
			-0.034313;0.010243;-0.227582;;

			24;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,4;,
			3; 2,4,5;,
			3; 2,5,6;,
			3; 2,6,1;,
			3; 1,8,7;,
			3; 1,7,0;,
			3; 0,7,9;,
			3; 0,9,3;,
			3; 3,9,10;,
			3; 3,10,4;,
			3; 4,10,11;,
			3; 4,11,5;,
			3; 5,11,12;,
			3; 5,12,6;,
			3; 6,12,8;,
			3; 6,8,1;,
			3; 13,7,8;,
			3; 13,9,7;,
			3; 13,10,9;,
			3; 13,11,10;,
			3; 13,12,11;,
			3; 13,8,12;;
			MeshMaterialList {
				1;
			24;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material dkdkgrey {
					0.012200;0.012200;0.012200;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame TAILPIEC01 {
		Mesh mesh-TAILPIEC01 {
			18;
			0.009243;0.014431;-0.141013;,
			0.015981;0.003307;-0.141013;,
			-0.002582;0.003307;-0.141013;,
			-0.002582;0.017657;-0.141013;,
			-0.014408;0.014431;-0.141013;,
			-0.021147;0.003307;-0.141013;,
			0.006699;0.003307;-0.191765;,
			-0.002582;0.003307;-0.191765;,
			0.003981;0.009871;-0.191765;,
			-0.002582;0.012589;-0.191765;,
			-0.009147;0.009871;-0.191765;,
			-0.011865;0.003307;-0.191765;,
			0.005756;0.003307;-0.242517;,
			-0.002582;0.003307;-0.242517;,
			0.003312;0.009203;-0.242517;,
			-0.002582;0.011645;-0.242517;,
			-0.008478;0.009203;-0.242517;,
			-0.010920;0.003307;-0.242517;;

			32;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,4;,
			3; 2,4,5;,
			3; 2,7,6;,
			3; 2,6,1;,
			3; 1,6,8;,
			3; 1,8,0;,
			3; 0,8,9;,
			3; 0,9,3;,
			3; 3,9,10;,
			3; 3,10,4;,
			3; 4,10,11;,
			3; 4,11,5;,
			3; 5,11,7;,
			3; 5,7,2;,
			3; 7,13,12;,
			3; 7,12,6;,
			3; 6,12,14;,
			3; 6,14,8;,
			3; 8,14,15;,
			3; 8,15,9;,
			3; 9,15,16;,
			3; 9,16,10;,
			3; 10,16,17;,
			3; 10,17,11;,
			3; 11,17,13;,
			3; 11,13,7;,
			3; 13,14,12;,
			3; 13,15,14;,
			3; 13,16,15;,
			3; 13,17,16;;
			MeshMaterialList {
				1;
			32;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material brown {
					0.085700;0.014700;0.000000;1.000000;;
					65.890000;
					0.163300;0.024000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame neckend {
		Mesh mesh-neckend {
			46;
			0.011073;0.016107;0.213294;,
			-0.014744;0.016107;0.213294;,
			0.011073;0.007617;0.217859;,
			-0.014744;0.007617;0.217859;,
			0.011073;0.028665;0.219718;,
			-0.014744;0.028665;0.219718;,
			0.011073;0.029857;0.238178;,
			-0.014744;0.029857;0.238178;,
			0.011073;0.018410;0.250000;,
			-0.014744;0.018410;0.250000;,
			0.011073;-0.000490;0.246466;,
			-0.014744;-0.000490;0.246466;,
			0.011073;-0.007460;0.229980;,
			-0.014744;-0.007460;0.229980;,
			0.011073;-0.003177;0.161772;,
			-0.014744;-0.003177;0.161772;,
			0.011073;0.010536;0.156934;,
			-0.014744;0.010536;0.156934;,
			-0.017222;0.001974;0.230128;,
			-0.014507;0.010648;0.218637;,
			-0.016774;0.013310;0.231524;,
			-0.018786;0.009582;0.241401;,
			-0.019898;0.021333;0.235873;,
			-0.021474;0.018158;0.224126;,
			-0.022008;0.009408;0.227064;,
			-0.009687;0.010648;0.218637;,
			-0.011954;0.013310;0.231524;,
			-0.012402;0.001974;0.230128;,
			-0.013966;0.009582;0.241401;,
			-0.015077;0.021333;0.235873;,
			-0.016654;0.018158;0.224126;,
			-0.017188;0.009408;0.227064;,
			0.011107;0.010648;0.218637;,
			0.013822;0.001974;0.230128;,
			0.013374;0.013310;0.231524;,
			0.015387;0.009582;0.241401;,
			0.016498;0.021333;0.235873;,
			0.018074;0.018158;0.224126;,
			0.018608;0.009408;0.227064;,
			0.008554;0.013310;0.231524;,
			0.006287;0.010648;0.218637;,
			0.009002;0.001974;0.230128;,
			0.010566;0.009582;0.241401;,
			0.011679;0.021333;0.235873;,
			0.013254;0.018158;0.224126;,
			0.013788;0.009408;0.227064;;

			80;
			3; 2,1,0;,
			3; 2,3,1;,
			3; 0,5,4;,
			3; 0,1,5;,
			3; 4,7,6;,
			3; 4,5,7;,
			3; 6,9,8;,
			3; 6,7,9;,
			3; 8,11,10;,
			3; 8,9,11;,
			3; 10,13,12;,
			3; 10,11,13;,
			3; 12,15,14;,
			3; 12,13,15;,
			3; 14,17,16;,
			3; 14,15,17;,
			3; 16,3,2;,
			3; 16,17,3;,
			3; 14,16,2;,
			3; 12,14,2;,
			3; 10,12,2;,
			3; 8,10,2;,
			3; 6,8,2;,
			3; 4,6,2;,
			3; 0,4,2;,
			3; 15,3,17;,
			3; 13,3,15;,
			3; 11,3,13;,
			3; 9,3,11;,
			3; 7,3,9;,
			3; 5,3,7;,
			3; 1,3,5;,
			3; 20,19,18;,
			3; 20,18,21;,
			3; 20,21,22;,
			3; 20,22,23;,
			3; 20,23,24;,
			3; 20,26,25;,
			3; 20,25,19;,
			3; 19,25,27;,
			3; 19,27,18;,
			3; 18,27,28;,
			3; 18,28,21;,
			3; 21,28,29;,
			3; 21,29,22;,
			3; 22,29,30;,
			3; 22,30,23;,
			3; 23,30,31;,
			3; 23,31,24;,
			3; 24,31,26;,
			3; 24,26,20;,
			3; 26,27,25;,
			3; 26,28,27;,
			3; 26,29,28;,
			3; 26,30,29;,
			3; 26,31,30;,
			3; 34,33,32;,
			3; 34,35,33;,
			3; 34,36,35;,
			3; 34,37,36;,
			3; 34,38,37;,
			3; 34,40,39;,
			3; 34,32,40;,
			3; 32,41,40;,
			3; 32,33,41;,
			3; 33,42,41;,
			3; 33,35,42;,
			3; 35,43,42;,
			3; 35,36,43;,
			3; 36,44,43;,
			3; 36,37,44;,
			3; 37,45,44;,
			3; 37,38,45;,
			3; 38,39,45;,
			3; 38,34,39;,
			3; 39,40,41;,
			3; 39,41,42;,
			3; 39,42,43;,
			3; 39,43,44;,
			3; 39,44,45;;
			MeshMaterialList {
				1;
			80;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material brown {
					0.085700;0.014700;0.000000;1.000000;;
					65.890000;
					0.163300;0.024000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame BODY01 {
		Mesh mesh-BODY01 {
			50;
			0.053705;-0.029857;-0.081351;,
			0.068124;-0.029857;-0.107601;,
			-0.000475;-0.029857;-0.091627;,
			0.064622;-0.029857;-0.059125;,
			0.083656;-0.029857;-0.047674;,
			0.077366;-0.029857;-0.030104;,
			0.081867;-0.029857;0.027564;,
			0.035704;-0.029857;0.071198;,
			-0.039505;-0.029857;0.071822;,
			-0.083158;-0.029857;0.028810;,
			-0.080535;-0.029857;-0.030117;,
			-0.088703;-0.029857;-0.047691;,
			-0.072369;-0.029857;-0.058502;,
			-0.057676;-0.029857;-0.083067;,
			-0.072221;-0.029857;-0.106666;,
			-0.092542;-0.029857;-0.112396;,
			-0.088689;-0.029857;-0.133432;,
			-0.095570;-0.029857;-0.161664;,
			-0.082511;-0.029857;-0.216196;,
			-0.047009;-0.029857;-0.242269;,
			0.043252;-0.029857;-0.242266;,
			0.082936;-0.029857;-0.216909;,
			0.095570;-0.029857;-0.163533;,
			0.084923;-0.029857;-0.131534;,
			0.089704;-0.029857;-0.113003;,
			0.053705;0.003383;-0.081351;,
			0.068124;0.003383;-0.107601;,
			0.064622;0.003383;-0.059125;,
			0.083656;0.003383;-0.047674;,
			0.077366;0.003383;-0.030104;,
			0.081867;0.003383;0.027564;,
			0.035704;0.003383;0.071198;,
			-0.039505;0.003383;0.071822;,
			-0.083158;0.003383;0.028810;,
			-0.080535;0.003383;-0.030117;,
			-0.088703;0.003383;-0.047691;,
			-0.072369;0.003383;-0.058502;,
			-0.057676;0.003383;-0.083067;,
			-0.072221;0.003383;-0.106666;,
			-0.092542;0.003383;-0.112396;,
			-0.088689;0.003383;-0.133432;,
			-0.095570;0.003383;-0.161664;,
			-0.082511;0.003383;-0.216196;,
			-0.047009;0.003383;-0.242269;,
			0.043252;0.003383;-0.242266;,
			0.082936;0.003383;-0.216909;,
			0.095570;0.003383;-0.163533;,
			0.084923;0.003383;-0.131534;,
			0.089704;0.003383;-0.113003;,
			-0.000475;0.003383;-0.091627;;

			96;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,4;,
			3; 2,4,5;,
			3; 2,5,6;,
			3; 2,6,7;,
			3; 2,7,8;,
			3; 2,8,9;,
			3; 2,9,10;,
			3; 2,10,11;,
			3; 2,11,12;,
			3; 2,12,13;,
			3; 2,13,14;,
			3; 2,14,15;,
			3; 2,15,16;,
			3; 2,16,17;,
			3; 2,17,18;,
			3; 2,18,19;,
			3; 2,19,20;,
			3; 2,20,21;,
			3; 2,21,22;,
			3; 2,22,23;,
			3; 2,23,24;,
			3; 2,24,1;,
			3; 1,26,25;,
			3; 1,25,0;,
			3; 0,25,27;,
			3; 0,27,3;,
			3; 3,27,28;,
			3; 3,28,4;,
			3; 4,28,29;,
			3; 4,29,5;,
			3; 5,29,30;,
			3; 5,30,6;,
			3; 6,30,31;,
			3; 6,31,7;,
			3; 7,31,32;,
			3; 7,32,8;,
			3; 8,32,33;,
			3; 8,33,9;,
			3; 9,33,34;,
			3; 9,34,10;,
			3; 10,34,35;,
			3; 10,35,11;,
			3; 11,35,36;,
			3; 11,36,12;,
			3; 12,36,37;,
			3; 12,37,13;,
			3; 13,37,38;,
			3; 13,38,14;,
			3; 14,38,39;,
			3; 14,39,15;,
			3; 15,39,40;,
			3; 15,40,16;,
			3; 16,40,41;,
			3; 16,41,17;,
			3; 17,41,42;,
			3; 17,42,18;,
			3; 18,42,43;,
			3; 18,43,19;,
			3; 19,43,44;,
			3; 19,44,20;,
			3; 20,44,45;,
			3; 20,45,21;,
			3; 21,45,46;,
			3; 21,46,22;,
			3; 22,46,47;,
			3; 22,47,23;,
			3; 23,47,48;,
			3; 23,48,24;,
			3; 24,48,26;,
			3; 24,26,1;,
			3; 49,25,26;,
			3; 49,27,25;,
			3; 49,28,27;,
			3; 49,29,28;,
			3; 49,30,29;,
			3; 49,31,30;,
			3; 49,32,31;,
			3; 49,33,32;,
			3; 49,34,33;,
			3; 49,35,34;,
			3; 49,36,35;,
			3; 49,37,36;,
			3; 49,38,37;,
			3; 49,39,38;,
			3; 49,40,39;,
			3; 49,41,40;,
			3; 49,42,41;,
			3; 49,43,42;,
			3; 49,44,43;,
			3; 49,45,44;,
			3; 49,46,45;,
			3; 49,47,46;,
			3; 49,48,47;,
			3; 49,26,48;;
			MeshMaterialList {
				1;
			96;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material brnhair {
					0.089800;0.030200;0.011000;1.000000;;
					60.470000;
					0.130600;0.081900;0.035200;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame pegs {
		Mesh mesh-pegs {
			96;
			-0.030055;0.002037;0.167836;,
			-0.030054;0.002370;0.174200;,
			-0.025378;0.002203;0.171015;,
			-0.025376;0.002537;0.177381;,
			-0.020699;0.002370;0.174197;,
			-0.020700;0.002037;0.167833;,
			-0.025379;0.001870;0.164652;,
			-0.030055;0.005107;0.167674;,
			-0.030054;0.005440;0.174038;,
			-0.025376;0.005607;0.177219;,
			-0.020699;0.005440;0.174035;,
			-0.020700;0.005107;0.167671;,
			-0.025379;0.004940;0.164492;,
			-0.025378;0.005273;0.170856;,
			0.014625;0.003607;0.169165;,
			0.014625;0.002213;0.170996;,
			0.014625;0.003699;0.170917;,
			0.014625;0.003791;0.172672;,
			0.014625;0.005185;0.170841;,
			-0.023354;0.003607;0.169165;,
			-0.023354;0.002213;0.170996;,
			-0.023354;0.003791;0.172672;,
			-0.023354;0.005185;0.170841;,
			-0.023354;0.003699;0.170917;,
			-0.030055;0.003211;0.190248;,
			-0.030054;0.003544;0.196612;,
			-0.025378;0.003377;0.193428;,
			-0.025376;0.003711;0.199792;,
			-0.020699;0.003544;0.196609;,
			-0.020700;0.003211;0.190245;,
			-0.025379;0.003044;0.187064;,
			-0.030055;0.006281;0.190087;,
			-0.030054;0.006614;0.196451;,
			-0.025376;0.006781;0.199632;,
			-0.020699;0.006614;0.196448;,
			-0.020700;0.006281;0.190084;,
			-0.025379;0.006114;0.186903;,
			-0.025378;0.006447;0.193268;,
			0.014625;0.004781;0.191576;,
			0.014625;0.003386;0.193408;,
			0.014625;0.004873;0.193330;,
			0.014625;0.004965;0.195084;,
			0.014625;0.006359;0.193253;,
			-0.023354;0.004781;0.191576;,
			-0.023354;0.003386;0.193408;,
			-0.023354;0.004965;0.195084;,
			-0.023354;0.006359;0.193253;,
			-0.023354;0.004873;0.193330;,
			0.026662;0.004010;0.207456;,
			0.026639;0.003672;0.201092;,
			0.021949;0.003944;0.204244;,
			0.021972;0.004282;0.210608;,
			0.017259;0.004216;0.207397;,
			0.017236;0.003878;0.201035;,
			0.021927;0.003606;0.197882;,
			0.026585;0.007066;0.207297;,
			0.026562;0.006729;0.200935;,
			0.021895;0.007338;0.210450;,
			0.017182;0.007272;0.207240;,
			0.017159;0.006934;0.200878;,
			0.021848;0.006663;0.197725;,
			0.021872;0.007000;0.204087;,
			-0.018263;0.004833;0.203991;,
			-0.018307;0.006220;0.202161;,
			-0.018301;0.006313;0.203914;,
			-0.018293;0.006406;0.205668;,
			-0.018338;0.007792;0.203839;,
			0.019915;0.003997;0.204213;,
			0.019871;0.005384;0.202383;,
			0.019883;0.005570;0.205890;,
			0.019839;0.006957;0.204060;,
			0.019877;0.005477;0.204137;,
			0.026662;0.002836;0.185043;,
			0.026639;0.002498;0.178679;,
			0.021949;0.002770;0.181832;,
			0.021972;0.003108;0.188196;,
			0.017259;0.003042;0.184984;,
			0.017236;0.002704;0.178622;,
			0.021927;0.002432;0.175470;,
			0.026585;0.005892;0.184885;,
			0.026562;0.005555;0.178523;,
			0.021895;0.006164;0.188039;,
			0.017182;0.006098;0.184827;,
			0.017159;0.005760;0.178465;,
			0.021848;0.005488;0.175313;,
			0.021872;0.005826;0.181675;,
			-0.018263;0.003659;0.181578;,
			-0.018307;0.005046;0.179749;,
			-0.018301;0.005139;0.181503;,
			-0.018293;0.005232;0.183256;,
			-0.018338;0.006619;0.181426;,
			0.019915;0.002824;0.181800;,
			0.019871;0.004210;0.179971;,
			0.019883;0.004396;0.183477;,
			0.019839;0.005783;0.181648;,
			0.019877;0.004303;0.181725;;

			160;
			3; 2,1,0;,
			3; 2,3,1;,
			3; 2,4,3;,
			3; 2,5,4;,
			3; 2,6,5;,
			3; 2,0,6;,
			3; 0,8,7;,
			3; 0,1,8;,
			3; 1,9,8;,
			3; 1,3,9;,
			3; 3,10,9;,
			3; 3,4,10;,
			3; 4,11,10;,
			3; 4,5,11;,
			3; 5,12,11;,
			3; 5,6,12;,
			3; 6,7,12;,
			3; 6,0,7;,
			3; 13,7,8;,
			3; 13,8,9;,
			3; 13,9,10;,
			3; 13,10,11;,
			3; 13,11,12;,
			3; 13,12,7;,
			3; 16,15,14;,
			3; 16,17,15;,
			3; 16,18,17;,
			3; 16,14,18;,
			3; 14,20,19;,
			3; 14,15,20;,
			3; 15,21,20;,
			3; 15,17,21;,
			3; 17,22,21;,
			3; 17,18,22;,
			3; 18,19,22;,
			3; 18,14,19;,
			3; 23,19,20;,
			3; 23,20,21;,
			3; 23,21,22;,
			3; 23,22,19;,
			3; 26,25,24;,
			3; 26,27,25;,
			3; 26,28,27;,
			3; 26,29,28;,
			3; 26,30,29;,
			3; 26,24,30;,
			3; 24,32,31;,
			3; 24,25,32;,
			3; 25,33,32;,
			3; 25,27,33;,
			3; 27,34,33;,
			3; 27,28,34;,
			3; 28,35,34;,
			3; 28,29,35;,
			3; 29,36,35;,
			3; 29,30,36;,
			3; 30,31,36;,
			3; 30,24,31;,
			3; 37,31,32;,
			3; 37,32,33;,
			3; 37,33,34;,
			3; 37,34,35;,
			3; 37,35,36;,
			3; 37,36,31;,
			3; 40,39,38;,
			3; 40,41,39;,
			3; 40,42,41;,
			3; 40,38,42;,
			3; 38,44,43;,
			3; 38,39,44;,
			3; 39,45,44;,
			3; 39,41,45;,
			3; 41,46,45;,
			3; 41,42,46;,
			3; 42,43,46;,
			3; 42,38,43;,
			3; 47,43,44;,
			3; 47,44,45;,
			3; 47,45,46;,
			3; 47,46,43;,
			3; 50,49,48;,
			3; 50,48,51;,
			3; 50,51,52;,
			3; 50,52,53;,
			3; 50,53,54;,
			3; 50,54,49;,
			3; 49,56,55;,
			3; 49,55,48;,
			3; 48,55,57;,
			3; 48,57,51;,
			3; 51,57,58;,
			3; 51,58,52;,
			3; 52,58,59;,
			3; 52,59,53;,
			3; 53,59,60;,
			3; 53,60,54;,
			3; 54,60,56;,
			3; 54,56,49;,
			3; 61,55,56;,
			3; 61,57,55;,
			3; 61,58,57;,
			3; 61,59,58;,
			3; 61,60,59;,
			3; 61,56,60;,
			3; 64,63,62;,
			3; 64,62,65;,
			3; 64,65,66;,
			3; 64,66,63;,
			3; 63,68,67;,
			3; 63,67,62;,
			3; 62,67,69;,
			3; 62,69,65;,
			3; 65,69,70;,
			3; 65,70,66;,
			3; 66,70,68;,
			3; 66,68,63;,
			3; 71,67,68;,
			3; 71,69,67;,
			3; 71,70,69;,
			3; 71,68,70;,
			3; 74,73,72;,
			3; 74,72,75;,
			3; 74,75,76;,
			3; 74,76,77;,
			3; 74,77,78;,
			3; 74,78,73;,
			3; 73,80,79;,
			3; 73,79,72;,
			3; 72,79,81;,
			3; 72,81,75;,
			3; 75,81,82;,
			3; 75,82,76;,
			3; 76,82,83;,
			3; 76,83,77;,
			3; 77,83,84;,
			3; 77,84,78;,
			3; 78,84,80;,
			3; 78,80,73;,
			3; 85,79,80;,
			3; 85,81,79;,
			3; 85,82,81;,
			3; 85,83,82;,
			3; 85,84,83;,
			3; 85,80,84;,
			3; 88,87,86;,
			3; 88,86,89;,
			3; 88,89,90;,
			3; 88,90,87;,
			3; 87,92,91;,
			3; 87,91,86;,
			3; 86,91,93;,
			3; 86,93,89;,
			3; 89,93,94;,
			3; 89,94,90;,
			3; 90,94,92;,
			3; 90,92,87;,
			3; 95,91,92;,
			3; 95,93,91;,
			3; 95,94,93;,
			3; 95,92,94;;
			MeshMaterialList {
				1;
			160;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material brass {
					0.477600;0.195900;0.000000;1.000000;;
					134.880000;
					0.579600;0.579600;0.579600;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

