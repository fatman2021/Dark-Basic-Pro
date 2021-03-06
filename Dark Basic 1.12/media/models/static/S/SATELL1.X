xof 0302txt 0064
//  DV8148 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame supports {
		Mesh mesh-supports {
			32;
			0.453996;0.113789;-2.544280;,
			0.459274;-0.030186;-2.724090;,
			0.460416;0.113738;-2.724090;,
			0.452855;-0.030135;-2.544280;,
			3.749000;0.090216;3.811500;,
			3.894350;-0.054869;3.915930;,
			3.747860;-0.053707;3.811500;,
			3.895490;0.089055;3.915930;,
			-0.413388;0.120664;-2.724090;,
			-0.414530;-0.023260;-2.724090;,
			-0.406969;0.120614;-2.544280;,
			-0.408110;-0.023311;-2.544280;,
			-3.703060;0.005351;3.811500;,
			-3.849570;0.006512;3.915930;,
			-3.701920;0.149274;3.811500;,
			-3.848410;0.150435;3.915930;,
			-0.070087;0.462406;-2.544280;,
			0.073842;0.468825;-2.724090;,
			-0.070087;0.468825;-2.724090;,
			0.073842;0.462406;-2.544280;,
			-0.072631;3.757490;3.811500;,
			0.071297;3.903990;3.915930;,
			0.071297;3.757490;3.811500;,
			-0.072631;3.903990;3.915930;,
			-0.070087;-0.405006;-2.724090;,
			0.073841;-0.405006;-2.724090;,
			-0.070087;-0.398586;-2.544280;,
			0.073841;-0.398586;-2.544280;,
			0.071296;-3.693670;3.811500;,
			0.071296;-3.840170;3.915930;,
			-0.072632;-3.693670;3.811500;,
			-0.072633;-3.840170;3.915930;;

			48;
			3; 2,1,0;,
			3; 3,0,1;,
			3; 6,5,4;,
			3; 7,4,5;,
			3; 3,6,0;,
			3; 4,0,6;,
			3; 1,5,3;,
			3; 6,3,5;,
			3; 2,7,1;,
			3; 5,1,7;,
			3; 0,4,2;,
			3; 7,2,4;,
			3; 10,9,8;,
			3; 9,10,11;,
			3; 14,13,12;,
			3; 13,14,15;,
			3; 10,12,11;,
			3; 12,10,14;,
			3; 11,13,9;,
			3; 13,11,12;,
			3; 9,15,8;,
			3; 15,9,13;,
			3; 8,14,10;,
			3; 14,8,15;,
			3; 18,17,16;,
			3; 19,16,17;,
			3; 22,21,20;,
			3; 23,20,21;,
			3; 19,22,16;,
			3; 20,16,22;,
			3; 17,21,19;,
			3; 22,19,21;,
			3; 18,23,17;,
			3; 21,17,23;,
			3; 16,20,18;,
			3; 23,18,20;,
			3; 26,25,24;,
			3; 25,26,27;,
			3; 30,29,28;,
			3; 29,30,31;,
			3; 26,28,27;,
			3; 28,26,30;,
			3; 27,29,25;,
			3; 29,27,28;,
			3; 25,31,24;,
			3; 31,25,29;,
			3; 24,30,26;,
			3; 30,24,31;;
			MeshMaterialList {
				1;
			48;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

	Frame swivels {
		Mesh mesh-swivels {
			48;
			0.019748;-1.497820;-2.731220;,
			0.062785;-1.497820;-2.790460;,
			0.000502;-1.497820;-2.790460;,
			-0.049887;-1.497820;-2.753860;,
			-0.049887;-1.497820;-2.827070;,
			0.019748;-1.497820;-2.849690;,
			0.019748;1.549080;-2.731220;,
			0.062785;1.549080;-2.790460;,
			-0.049887;1.549080;-2.753860;,
			-0.049887;1.549080;-2.827070;,
			0.019748;1.549080;-2.849690;,
			0.000502;1.549080;-2.790460;,
			0.277637;-1.473810;-3.066360;,
			0.391348;-1.473810;-2.791830;,
			0.003114;-1.473810;-2.791830;,
			0.003114;-1.473810;-3.180070;,
			-0.271409;-1.473810;-3.066360;,
			-0.385120;-1.473810;-2.791830;,
			-0.271409;-1.473810;-2.517300;,
			0.003114;-1.473810;-2.403600;,
			0.277637;-1.473810;-2.517300;,
			0.277637;-1.555010;-3.066360;,
			0.391348;-1.555010;-2.791830;,
			0.003114;-1.555010;-3.180070;,
			-0.271409;-1.555010;-3.066360;,
			-0.385120;-1.555010;-2.791830;,
			-0.271409;-1.555010;-2.517300;,
			0.003114;-1.555010;-2.403600;,
			0.277637;-1.555010;-2.517300;,
			0.003114;-1.555010;-2.791830;,
			0.277637;1.589150;-3.066360;,
			0.391348;1.589150;-2.791830;,
			0.003114;1.589150;-2.791830;,
			0.003114;1.589150;-3.180070;,
			-0.271409;1.589150;-3.066360;,
			-0.385120;1.589150;-2.791830;,
			-0.271409;1.589150;-2.517300;,
			0.003114;1.589150;-2.403600;,
			0.277637;1.589150;-2.517300;,
			0.277637;1.507950;-3.066360;,
			0.391348;1.507950;-2.791830;,
			0.003114;1.507950;-3.180070;,
			-0.271409;1.507950;-3.066360;,
			-0.385120;1.507950;-2.791830;,
			-0.271409;1.507950;-2.517300;,
			0.003114;1.507950;-2.403600;,
			0.277637;1.507950;-2.517300;,
			0.003114;1.507950;-2.791830;;

			84;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,4;,
			3; 2,4,5;,
			3; 2,5,1;,
			3; 1,7,6;,
			3; 1,6,0;,
			3; 0,6,8;,
			3; 0,8,3;,
			3; 3,8,9;,
			3; 3,9,4;,
			3; 4,9,10;,
			3; 4,10,5;,
			3; 5,10,7;,
			3; 5,7,1;,
			3; 11,6,7;,
			3; 11,8,6;,
			3; 11,9,8;,
			3; 11,10,9;,
			3; 11,7,10;,
			3; 14,13,12;,
			3; 14,12,15;,
			3; 14,15,16;,
			3; 14,16,17;,
			3; 14,17,18;,
			3; 14,18,19;,
			3; 14,19,20;,
			3; 14,20,13;,
			3; 13,22,21;,
			3; 13,21,12;,
			3; 12,21,23;,
			3; 12,23,15;,
			3; 15,23,24;,
			3; 15,24,16;,
			3; 16,24,25;,
			3; 16,25,17;,
			3; 17,25,26;,
			3; 17,26,18;,
			3; 18,26,27;,
			3; 18,27,19;,
			3; 19,27,28;,
			3; 19,28,20;,
			3; 20,28,22;,
			3; 20,22,13;,
			3; 29,21,22;,
			3; 29,23,21;,
			3; 29,24,23;,
			3; 29,25,24;,
			3; 29,26,25;,
			3; 29,27,26;,
			3; 29,28,27;,
			3; 29,22,28;,
			3; 32,31,30;,
			3; 32,30,33;,
			3; 32,33,34;,
			3; 32,34,35;,
			3; 32,35,36;,
			3; 32,36,37;,
			3; 32,37,38;,
			3; 32,38,31;,
			3; 31,40,39;,
			3; 31,39,30;,
			3; 30,39,41;,
			3; 30,41,33;,
			3; 33,41,42;,
			3; 33,42,34;,
			3; 34,42,43;,
			3; 34,43,35;,
			3; 35,43,44;,
			3; 35,44,36;,
			3; 36,44,45;,
			3; 36,45,37;,
			3; 37,45,46;,
			3; 37,46,38;,
			3; 38,46,40;,
			3; 38,40,31;,
			3; 47,39,40;,
			3; 47,41,39;,
			3; 47,42,41;,
			3; 47,43,42;,
			3; 47,44,43;,
			3; 47,45,44;,
			3; 47,46,45;,
			3; 47,40,46;;
			MeshMaterialList {
				1;
			84;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material flbrown {
					0.110200;0.012000;0.001300;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame dish {
		Mesh mesh-dish {
			52;
			0.057277;0.890736;-3.509650;,
			0.079712;0.858158;-3.466360;,
			0.003114;0.858158;-3.466360;,
			0.003114;0.904239;-3.527550;,
			-0.051048;0.890736;-3.509650;,
			-0.073483;0.858158;-3.466360;,
			-0.051048;0.825573;-3.423110;,
			0.003114;0.812077;-3.405180;,
			0.057277;0.825573;-3.423110;,
			0.105932;0.939330;-3.545110;,
			0.148520;0.877485;-3.462980;,
			0.391348;1.033970;-3.345730;,
			0.277637;1.199110;-3.565020;,
			0.003114;0.964950;-3.579130;,
			0.003114;1.267520;-3.655850;,
			-0.099704;0.939330;-3.545110;,
			-0.271409;1.199110;-3.565020;,
			-0.142292;0.877485;-3.462980;,
			-0.385120;1.033970;-3.345730;,
			-0.099704;0.815633;-3.380850;,
			-0.271409;0.868833;-3.126420;,
			0.003114;0.790013;-3.346830;,
			0.003114;0.800429;-3.035580;,
			0.105932;0.815633;-3.380850;,
			0.277637;0.868833;-3.126420;,
			0.003114;0.818160;-3.518280;,
			0.359292;1.035170;-3.344820;,
			0.254970;1.186680;-3.546000;,
			0.003114;1.249440;-3.629330;,
			-0.248741;1.186680;-3.546000;,
			-0.353063;1.035170;-3.344820;,
			-0.248741;0.883666;-3.143620;,
			0.003114;0.820918;-3.060290;,
			0.254970;0.883666;-3.143620;,
			0.050862;0.878444;-3.511210;,
			0.068968;0.851851;-3.476530;,
			0.007150;0.851851;-3.476530;,
			0.007150;0.889469;-3.525590;,
			-0.036562;0.878444;-3.511210;,
			-0.054667;0.851851;-3.476530;,
			-0.036562;0.825251;-3.441840;,
			0.007150;0.814233;-3.427480;,
			0.050862;0.825251;-3.441840;,
			0.050862;0.476416;-3.520240;,
			0.068968;0.476416;-3.476530;,
			0.007150;0.476416;-3.538350;,
			-0.036562;0.476416;-3.520240;,
			-0.054667;0.476416;-3.476530;,
			-0.036562;0.476416;-3.432810;,
			0.007150;0.476416;-3.414700;,
			0.050862;0.476416;-3.432810;,
			0.007150;0.476416;-3.476530;;

			96;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,4;,
			3; 2,4,5;,
			3; 2,5,6;,
			3; 2,6,7;,
			3; 2,7,8;,
			3; 2,8,1;,
			3; 11,10,9;,
			3; 11,9,12;,
			3; 12,9,13;,
			3; 12,13,14;,
			3; 14,13,15;,
			3; 14,15,16;,
			3; 16,15,17;,
			3; 16,17,18;,
			3; 18,17,19;,
			3; 18,19,20;,
			3; 20,19,21;,
			3; 20,21,22;,
			3; 22,21,23;,
			3; 22,23,24;,
			3; 24,23,10;,
			3; 24,10,11;,
			3; 10,25,9;,
			3; 9,25,13;,
			3; 13,25,15;,
			3; 15,25,17;,
			3; 17,25,19;,
			3; 19,25,21;,
			3; 21,25,23;,
			3; 23,25,10;,
			3; 12,26,11;,
			3; 26,12,27;,
			3; 14,27,12;,
			3; 27,14,28;,
			3; 16,28,14;,
			3; 28,16,29;,
			3; 18,29,16;,
			3; 29,18,30;,
			3; 20,30,18;,
			3; 30,20,31;,
			3; 22,31,20;,
			3; 31,22,32;,
			3; 24,32,22;,
			3; 32,24,33;,
			3; 11,33,24;,
			3; 33,11,26;,
			3; 27,1,26;,
			3; 1,27,0;,
			3; 28,0,27;,
			3; 0,28,3;,
			3; 29,3,28;,
			3; 3,29,4;,
			3; 30,4,29;,
			3; 4,30,5;,
			3; 31,5,30;,
			3; 5,31,6;,
			3; 32,6,31;,
			3; 6,32,7;,
			3; 33,7,32;,
			3; 7,33,8;,
			3; 26,8,33;,
			3; 8,26,1;,
			3; 36,35,34;,
			3; 36,34,37;,
			3; 36,37,38;,
			3; 36,38,39;,
			3; 36,39,40;,
			3; 36,40,41;,
			3; 36,41,42;,
			3; 36,42,35;,
			3; 35,44,43;,
			3; 35,43,34;,
			3; 34,43,45;,
			3; 34,45,37;,
			3; 37,45,46;,
			3; 37,46,38;,
			3; 38,46,47;,
			3; 38,47,39;,
			3; 39,47,48;,
			3; 39,48,40;,
			3; 40,48,49;,
			3; 40,49,41;,
			3; 41,49,50;,
			3; 41,50,42;,
			3; 42,50,44;,
			3; 42,44,35;,
			3; 51,43,44;,
			3; 51,45,43;,
			3; 51,46,45;,
			3; 51,47,46;,
			3; 51,48,47;,
			3; 51,49,48;,
			3; 51,50,49;,
			3; 51,44,50;;
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
				Material bone {
					0.900000;0.622900;0.227800;1.000000;;
					200.000000;
					0.461200;0.419300;0.267300;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame sattelite {
		Mesh mesh-sattelite {
			122;
			0.987455;0.987455;2.508690;,
			1.396480;-0.000004;2.508690;,
			0.000004;-0.000004;2.508690;,
			0.000004;1.396460;2.508690;,
			-0.987455;0.987455;2.508690;,
			-1.396460;-0.000004;2.508690;,
			-0.987455;-0.987455;2.508690;,
			0.000004;-1.396480;2.508690;,
			0.987455;-0.987455;2.508690;,
			1.418710;1.418700;2.535830;,
			2.006370;-0.000004;2.535830;,
			4.534360;-0.000004;4.301420;,
			3.206280;3.206280;4.301420;,
			0.000004;2.006350;2.535830;,
			0.000003;4.534360;4.301420;,
			-1.418700;1.418700;2.535830;,
			-3.206280;3.206280;4.301420;,
			-2.006350;-0.000004;2.535830;,
			-4.534360;-0.000004;4.301420;,
			-1.418700;-1.418710;2.535830;,
			-3.206280;-3.206280;4.301420;,
			0.000004;-2.006370;2.535830;,
			0.000004;-4.534360;4.301420;,
			1.418710;-1.418710;2.535830;,
			3.206280;-3.206280;4.301420;,
			0.239140;-0.000004;-3.819820;,
			0.169097;0.169089;-3.819820;,
			0.000004;-0.000004;-3.819820;,
			0.000004;0.239130;-3.819820;,
			-0.169091;0.169089;-3.819820;,
			-0.239132;-0.000004;-3.819820;,
			-0.169091;-0.169099;-3.819820;,
			0.000004;-0.239140;-3.819820;,
			0.169099;-0.169099;-3.819820;,
			0.720160;0.720153;2.168180;,
			1.018460;-0.000004;2.168180;,
			0.000004;1.018460;2.168180;,
			-0.720153;0.720153;2.168180;,
			-1.018460;-0.000004;2.168180;,
			-0.720153;-0.720160;2.168180;,
			0.000004;-1.018460;2.168180;,
			0.720160;-0.720160;2.168180;,
			0.537434;0.537426;2.431230;,
			0.760046;-0.000004;2.431230;,
			0.000004;0.760032;2.431230;,
			-0.537426;0.537426;2.431230;,
			-0.760039;-0.000004;2.431230;,
			-0.537426;-0.537434;2.431230;,
			0.000004;-0.760046;2.431230;,
			0.537434;-0.537434;2.431230;,
			0.314290;0.314282;2.429730;,
			0.444471;-0.000004;2.429730;,
			0.000004;0.444464;2.429730;,
			-0.314282;0.314282;2.429730;,
			-0.444464;-0.000004;2.429730;,
			-0.314282;-0.314290;2.429730;,
			0.000004;-0.444471;2.429730;,
			0.314290;-0.314290;2.429730;,
			0.314290;0.314282;0.268464;,
			0.444471;-0.000004;0.268464;,
			0.000004;0.444464;0.268464;,
			-0.314282;0.314282;0.268464;,
			-0.444464;-0.000004;0.268464;,
			-0.314282;-0.314290;0.268464;,
			0.000004;-0.444473;0.268464;,
			0.314290;-0.314290;0.268464;,
			0.221332;0.221325;-0.081544;,
			0.313010;-0.000004;-0.081544;,
			0.000004;0.313001;-0.081544;,
			-0.221325;0.221325;-0.081544;,
			-0.313002;-0.000004;-0.081544;,
			-0.221325;-0.221333;-0.081544;,
			0.000004;-0.313010;-0.081544;,
			0.221333;-0.221333;-0.081544;,
			0.221332;0.221325;-0.534995;,
			0.313010;-0.000004;-0.534995;,
			0.000004;0.313001;-0.534995;,
			-0.221325;0.221325;-0.534995;,
			-0.313002;-0.000004;-0.534995;,
			-0.221325;-0.221333;-0.534995;,
			0.000004;-0.313010;-0.534979;,
			0.221333;-0.221333;-0.534995;,
			0.362981;0.362974;-0.536506;,
			0.513333;-0.000004;-0.536506;,
			0.000004;0.513325;-0.536506;,
			-0.362975;0.362974;-0.536506;,
			-0.513325;-0.000004;-0.536506;,
			-0.362975;-0.362983;-0.536490;,
			0.000004;-0.513333;-0.536490;,
			0.362981;-0.362983;-0.536490;,
			0.362981;0.362974;-3.559410;,
			0.513333;-0.000004;-3.559410;,
			0.000004;0.513325;-3.559410;,
			-0.362975;0.362974;-3.559410;,
			-0.513325;-0.000004;-3.559410;,
			-0.362975;-0.362983;-3.559410;,
			0.000004;-0.513333;-3.559410;,
			0.362981;-0.362983;-3.559410;,
			0.362981;0.362974;-3.710550;,
			0.513333;-0.000004;-3.710550;,
			0.000004;0.513325;-3.710550;,
			-0.362975;0.362974;-3.710550;,
			-0.513325;-0.000004;-3.710550;,
			-0.362975;-0.362983;-3.710550;,
			0.000004;-0.513333;-3.710550;,
			0.362981;-0.362983;-3.710550;,
			0.213520;0.213513;-4.302940;,
			0.301962;-0.000004;-4.302940;,
			0.000004;0.301953;-4.302940;,
			-0.213514;0.213513;-4.302940;,
			-0.301955;-0.000004;-4.302940;,
			-0.213514;-0.213522;-4.302940;,
			0.000004;-0.301962;-4.302940;,
			0.213520;-0.213522;-4.302940;,
			4.379350;-0.000004;4.302940;,
			3.096660;3.096650;4.302940;,
			0.000003;4.379330;4.302940;,
			-3.096650;3.096650;4.302940;,
			-4.379330;-0.000004;4.302940;,
			-3.096650;-3.096660;4.302940;,
			0.000004;-4.379350;4.302940;,
			3.096660;-3.096660;4.302940;;

			240;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,4;,
			3; 2,4,5;,
			3; 2,5,6;,
			3; 2,6,7;,
			3; 2,7,8;,
			3; 2,8,1;,
			3; 11,10,9;,
			3; 11,9,12;,
			3; 12,9,13;,
			3; 12,13,14;,
			3; 14,13,15;,
			3; 14,15,16;,
			3; 16,15,17;,
			3; 16,17,18;,
			3; 18,17,19;,
			3; 18,19,20;,
			3; 20,19,21;,
			3; 20,21,22;,
			3; 22,21,23;,
			3; 22,23,24;,
			3; 24,23,10;,
			3; 24,10,11;,
			3; 27,26,25;,
			3; 27,28,26;,
			3; 27,29,28;,
			3; 27,30,29;,
			3; 27,31,30;,
			3; 27,32,31;,
			3; 27,33,32;,
			3; 27,25,33;,
			3; 10,34,9;,
			3; 34,10,35;,
			3; 9,36,13;,
			3; 36,9,34;,
			3; 13,37,15;,
			3; 37,13,36;,
			3; 15,38,17;,
			3; 38,15,37;,
			3; 17,39,19;,
			3; 39,17,38;,
			3; 19,40,21;,
			3; 40,19,39;,
			3; 21,41,23;,
			3; 41,21,40;,
			3; 23,35,10;,
			3; 35,23,41;,
			3; 35,42,34;,
			3; 42,35,43;,
			3; 34,44,36;,
			3; 44,34,42;,
			3; 36,45,37;,
			3; 45,36,44;,
			3; 37,46,38;,
			3; 46,37,45;,
			3; 38,47,39;,
			3; 47,38,46;,
			3; 39,48,40;,
			3; 48,39,47;,
			3; 40,49,41;,
			3; 49,40,48;,
			3; 41,43,35;,
			3; 43,41,49;,
			3; 43,50,42;,
			3; 50,43,51;,
			3; 42,52,44;,
			3; 52,42,50;,
			3; 44,53,45;,
			3; 53,44,52;,
			3; 45,54,46;,
			3; 54,45,53;,
			3; 46,55,47;,
			3; 55,46,54;,
			3; 47,56,48;,
			3; 56,47,55;,
			3; 48,57,49;,
			3; 57,48,56;,
			3; 49,51,43;,
			3; 51,49,57;,
			3; 51,58,50;,
			3; 58,51,59;,
			3; 50,60,52;,
			3; 60,50,58;,
			3; 52,61,53;,
			3; 61,52,60;,
			3; 53,62,54;,
			3; 62,53,61;,
			3; 54,63,55;,
			3; 63,54,62;,
			3; 55,64,56;,
			3; 64,55,63;,
			3; 56,65,57;,
			3; 65,56,64;,
			3; 57,59,51;,
			3; 59,57,65;,
			3; 59,66,58;,
			3; 66,59,67;,
			3; 58,68,60;,
			3; 68,58,66;,
			3; 60,69,61;,
			3; 69,60,68;,
			3; 61,70,62;,
			3; 70,61,69;,
			3; 62,71,63;,
			3; 71,62,70;,
			3; 63,72,64;,
			3; 72,63,71;,
			3; 64,73,65;,
			3; 73,64,72;,
			3; 65,67,59;,
			3; 67,65,73;,
			3; 67,74,66;,
			3; 74,67,75;,
			3; 66,76,68;,
			3; 76,66,74;,
			3; 68,77,69;,
			3; 77,68,76;,
			3; 69,78,70;,
			3; 78,69,77;,
			3; 70,79,71;,
			3; 79,70,78;,
			3; 71,80,72;,
			3; 80,71,79;,
			3; 72,81,73;,
			3; 81,72,80;,
			3; 73,75,67;,
			3; 75,73,81;,
			3; 75,82,74;,
			3; 82,75,83;,
			3; 74,84,76;,
			3; 84,74,82;,
			3; 76,85,77;,
			3; 85,76,84;,
			3; 77,86,78;,
			3; 86,77,85;,
			3; 78,87,79;,
			3; 87,78,86;,
			3; 79,88,80;,
			3; 88,79,87;,
			3; 80,89,81;,
			3; 89,80,88;,
			3; 81,83,75;,
			3; 83,81,89;,
			3; 83,90,82;,
			3; 90,83,91;,
			3; 82,92,84;,
			3; 92,82,90;,
			3; 84,93,85;,
			3; 93,84,92;,
			3; 85,94,86;,
			3; 94,85,93;,
			3; 86,95,87;,
			3; 95,86,94;,
			3; 87,96,88;,
			3; 96,87,95;,
			3; 88,97,89;,
			3; 97,88,96;,
			3; 89,91,83;,
			3; 91,89,97;,
			3; 91,98,90;,
			3; 98,91,99;,
			3; 90,100,92;,
			3; 100,90,98;,
			3; 92,101,93;,
			3; 101,92,100;,
			3; 93,102,94;,
			3; 102,93,101;,
			3; 94,103,95;,
			3; 103,94,102;,
			3; 95,104,96;,
			3; 104,95,103;,
			3; 96,105,97;,
			3; 105,96,104;,
			3; 97,99,91;,
			3; 99,97,105;,
			3; 99,106,98;,
			3; 106,99,107;,
			3; 98,108,100;,
			3; 108,98,106;,
			3; 100,109,101;,
			3; 109,100,108;,
			3; 101,110,102;,
			3; 110,101,109;,
			3; 102,111,103;,
			3; 111,102,110;,
			3; 103,112,104;,
			3; 112,103,111;,
			3; 104,113,105;,
			3; 113,104,112;,
			3; 105,107,99;,
			3; 107,105,113;,
			3; 107,26,106;,
			3; 26,107,25;,
			3; 106,28,108;,
			3; 28,106,26;,
			3; 108,29,109;,
			3; 29,108,28;,
			3; 109,30,110;,
			3; 30,109,29;,
			3; 110,31,111;,
			3; 31,110,30;,
			3; 111,32,112;,
			3; 32,111,31;,
			3; 112,33,113;,
			3; 33,112,32;,
			3; 113,25,107;,
			3; 25,113,33;,
			3; 12,114,11;,
			3; 114,12,115;,
			3; 14,115,12;,
			3; 115,14,116;,
			3; 16,116,14;,
			3; 116,16,117;,
			3; 18,117,16;,
			3; 117,18,118;,
			3; 20,118,18;,
			3; 118,20,119;,
			3; 22,119,20;,
			3; 119,22,120;,
			3; 24,120,22;,
			3; 120,24,121;,
			3; 11,121,24;,
			3; 121,11,114;,
			3; 115,1,114;,
			3; 1,115,0;,
			3; 116,0,115;,
			3; 0,116,3;,
			3; 117,3,116;,
			3; 3,117,4;,
			3; 118,4,117;,
			3; 4,118,5;,
			3; 119,5,118;,
			3; 5,119,6;,
			3; 120,6,119;,
			3; 6,120,7;,
			3; 121,7,120;,
			3; 7,121,8;,
			3; 114,8,121;,
			3; 8,114,1;;
			MeshMaterialList {
				1;
			240;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material dkred {
					0.228600;0.000000;0.000000;1.000000;;
					60.000000;
					0.249000;0.000000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

