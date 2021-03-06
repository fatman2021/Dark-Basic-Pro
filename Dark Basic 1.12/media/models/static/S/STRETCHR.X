xof 0302txt 0064
//  DV7971 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame fabric {
		Mesh mesh-fabric {
			48;
			-0.321599;-0.029482;0.998530;,
			-0.360909;-0.001514;0.998530;,
			-0.321599;0.029482;0.998530;,
			-0.262634;0.009827;0.998530;,
			-0.262634;-0.009827;0.998530;,
			0.327010;0.029482;0.998530;,
			0.360909;-0.001514;0.998530;,
			0.327010;-0.029482;0.998530;,
			0.268045;-0.009827;0.998530;,
			0.268045;0.009827;0.998530;,
			-0.360909;-0.001514;-1.005140;,
			-0.321599;-0.029482;-1.005140;,
			-0.321599;0.029482;-1.005140;,
			-0.262634;0.009827;-1.005140;,
			-0.262634;-0.009827;-1.005140;,
			0.360909;-0.001514;-1.005140;,
			0.327010;0.029482;-1.005140;,
			0.327010;-0.029482;-1.005140;,
			0.268045;-0.009827;-1.005140;,
			0.268045;0.009827;-1.005140;,
			0.267568;-0.009827;-0.104183;,
			0.268045;-0.009827;-0.104183;,
			0.268045;-0.009827;0.108491;,
			0.267568;-0.009827;0.108491;,
			0.327010;-0.029482;-0.104183;,
			0.327010;-0.029482;0.108491;,
			0.360909;-0.001514;-0.104183;,
			0.360909;-0.001514;0.108491;,
			0.327010;0.029482;-0.104183;,
			0.327010;0.029482;0.108491;,
			0.268045;0.009827;-0.104183;,
			0.268045;0.009827;0.108491;,
			0.267568;0.009827;-0.104183;,
			0.267568;0.009827;0.108491;,
			-0.262634;-0.009827;-0.104183;,
			-0.262634;-0.009827;0.108491;,
			-0.321599;-0.029482;-0.104183;,
			-0.321599;-0.029482;0.108491;,
			-0.262405;-0.009827;-0.104183;,
			-0.262405;-0.009827;0.108491;,
			-0.262634;0.009827;-0.104183;,
			-0.262405;0.009827;-0.104183;,
			-0.262405;0.009827;0.108491;,
			-0.262634;0.009827;0.108491;,
			-0.321599;0.029482;-0.104183;,
			-0.321599;0.029482;0.108491;,
			-0.360909;-0.001514;-0.104183;,
			-0.360909;-0.001514;0.108491;;

			98;
			3; 2,1,0;,
			3; 3,2,0;,
			3; 3,0,4;,
			3; 7,6,5;,
			3; 8,7,5;,
			3; 8,5,9;,
			3; 4,8,9;,
			3; 4,9,3;,
			3; 12,11,10;,
			3; 13,11,12;,
			3; 13,14,11;,
			3; 17,16,15;,
			3; 18,16,17;,
			3; 18,19,16;,
			3; 14,19,18;,
			3; 14,13,19;,
			3; 18,20,4;,
			3; 21,20,18;,
			3; 18,17,21;,
			3; 8,4,22;,
			3; 4,23,22;,
			3; 23,4,20;,
			3; 17,15,24;,
			3; 7,8,25;,
			3; 8,22,25;,
			3; 17,24,21;,
			3; 15,16,26;,
			3; 6,7,27;,
			3; 7,25,27;,
			3; 15,26,24;,
			3; 16,19,28;,
			3; 5,6,29;,
			3; 16,28,26;,
			3; 29,6,27;,
			3; 19,13,30;,
			3; 9,5,31;,
			3; 28,19,30;,
			3; 31,5,29;,
			3; 13,32,30;,
			3; 9,33,13;,
			3; 31,33,9;,
			3; 13,33,32;,
			3; 22,29,25;,
			3; 28,26,26;,
			3; 29,27,25;,
			3; 27,29,27;,
			3; 30,21,24;,
			3; 22,31,29;,
			3; 26,28,28;,
			3; 28,24,26;,
			3; 24,28,30;,
			3; 29,31,29;,
			3; 30,20,21;,
			3; 20,30,32;,
			3; 22,23,31;,
			3; 33,31,23;,
			3; 23,20,33;,
			3; 33,20,32;,
			3; 34,11,14;,
			3; 14,18,34;,
			3; 4,0,35;,
			3; 11,34,36;,
			3; 37,35,0;,
			3; 0,1,37;,
			3; 18,38,34;,
			3; 18,39,38;,
			3; 4,39,18;,
			3; 4,35,39;,
			3; 13,12,40;,
			3; 13,41,9;,
			3; 40,41,13;,
			3; 9,42,3;,
			3; 41,42,9;,
			3; 43,3,42;,
			3; 12,10,44;,
			3; 2,3,45;,
			3; 40,12,44;,
			3; 45,3,43;,
			3; 10,11,46;,
			3; 1,2,47;,
			3; 2,45,47;,
			3; 10,46,44;,
			3; 11,36,46;,
			3; 37,1,47;,
			3; 34,38,40;,
			3; 41,40,38;,
			3; 42,38,39;,
			3; 41,38,42;,
			3; 43,39,35;,
			3; 39,43,42;,
			3; 34,40,44;,
			3; 35,37,43;,
			3; 37,45,43;,
			3; 46,36,34;,
			3; 46,34,44;,
			3; 36,46,46;,
			3; 37,47,45;,
			3; 47,37,47;;
			MeshMaterialList {
				1;
			98;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

	Frame handle2 {
		Mesh mesh-handle2 {
			66;
			0.332891;0.007837;1.185230;,
			0.335947;-0.001568;1.185230;,
			0.319946;-0.001568;1.185230;,
			0.324890;0.013649;1.185230;,
			0.315001;0.013649;1.185230;,
			0.307000;0.007837;1.185230;,
			0.303944;-0.001568;1.185230;,
			0.307000;-0.010973;1.185230;,
			0.315001;-0.016786;1.185230;,
			0.324890;-0.016786;1.185230;,
			0.332891;-0.010973;1.185230;,
			0.332891;0.007837;-1.181480;,
			0.335947;-0.001568;-1.181480;,
			0.324890;0.013649;-1.181480;,
			0.315001;0.013649;-1.181480;,
			0.307000;0.007837;-1.181480;,
			0.303944;-0.001568;-1.181480;,
			0.307000;-0.010973;-1.181480;,
			0.315001;-0.016786;-1.181480;,
			0.324890;-0.016786;-1.181480;,
			0.332891;-0.010973;-1.181480;,
			0.319946;-0.001568;-1.181480;,
			0.340676;-0.016731;1.021900;,
			0.345617;-0.001524;1.021900;,
			0.319745;-0.001524;1.021900;,
			0.327741;-0.026130;1.021900;,
			0.311750;-0.026130;1.021900;,
			0.298815;-0.016731;1.021900;,
			0.293874;-0.001524;1.021900;,
			0.298815;0.013683;1.021900;,
			0.311750;0.023081;1.021900;,
			0.327741;0.023081;1.021900;,
			0.340676;0.013683;1.021900;,
			0.340676;-0.016731;1.195930;,
			0.345617;-0.001524;1.195930;,
			0.327741;-0.026130;1.195930;,
			0.311750;-0.026130;1.195930;,
			0.298815;-0.016731;1.195930;,
			0.293874;-0.001524;1.195930;,
			0.298815;0.013683;1.195930;,
			0.311750;0.023081;1.195930;,
			0.327741;0.023081;1.195930;,
			0.340676;0.013683;1.195930;,
			0.319745;-0.001524;1.195930;,
			0.340676;-0.016731;-1.195930;,
			0.345617;-0.001524;-1.195930;,
			0.319745;-0.001524;-1.195930;,
			0.327741;-0.026130;-1.195930;,
			0.311750;-0.026130;-1.195930;,
			0.298815;-0.016731;-1.195930;,
			0.293874;-0.001524;-1.195930;,
			0.298815;0.013683;-1.195930;,
			0.311750;0.023081;-1.195930;,
			0.327741;0.023081;-1.195930;,
			0.340676;0.013683;-1.195930;,
			0.340676;-0.016731;-1.021900;,
			0.345617;-0.001524;-1.021900;,
			0.327741;-0.026130;-1.021900;,
			0.311750;-0.026130;-1.021900;,
			0.298815;-0.016731;-1.021900;,
			0.293874;-0.001524;-1.021900;,
			0.298815;0.013683;-1.021900;,
			0.311750;0.023081;-1.021900;,
			0.327741;0.023081;-1.021900;,
			0.340676;0.013683;-1.021900;,
			0.319745;-0.001524;-1.021900;;

			120;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,4;,
			3; 2,4,5;,
			3; 2,5,6;,
			3; 2,6,7;,
			3; 2,7,8;,
			3; 2,8,9;,
			3; 2,9,10;,
			3; 2,10,1;,
			3; 1,12,11;,
			3; 1,11,0;,
			3; 0,11,13;,
			3; 0,13,3;,
			3; 3,13,14;,
			3; 3,14,4;,
			3; 4,14,15;,
			3; 4,15,5;,
			3; 5,15,16;,
			3; 5,16,6;,
			3; 6,16,17;,
			3; 6,17,7;,
			3; 7,17,18;,
			3; 7,18,8;,
			3; 8,18,19;,
			3; 8,19,9;,
			3; 9,19,20;,
			3; 9,20,10;,
			3; 10,20,12;,
			3; 10,12,1;,
			3; 21,11,12;,
			3; 21,13,11;,
			3; 21,14,13;,
			3; 21,15,14;,
			3; 21,16,15;,
			3; 21,17,16;,
			3; 21,18,17;,
			3; 21,19,18;,
			3; 21,20,19;,
			3; 21,12,20;,
			3; 24,23,22;,
			3; 24,22,25;,
			3; 24,25,26;,
			3; 24,26,27;,
			3; 24,27,28;,
			3; 24,28,29;,
			3; 24,29,30;,
			3; 24,30,31;,
			3; 24,31,32;,
			3; 24,32,23;,
			3; 23,34,33;,
			3; 23,33,22;,
			3; 22,33,35;,
			3; 22,35,25;,
			3; 25,35,36;,
			3; 25,36,26;,
			3; 26,36,37;,
			3; 26,37,27;,
			3; 27,37,38;,
			3; 27,38,28;,
			3; 28,38,39;,
			3; 28,39,29;,
			3; 29,39,40;,
			3; 29,40,30;,
			3; 30,40,41;,
			3; 30,41,31;,
			3; 31,41,42;,
			3; 31,42,32;,
			3; 32,42,34;,
			3; 32,34,23;,
			3; 43,33,34;,
			3; 43,35,33;,
			3; 43,36,35;,
			3; 43,37,36;,
			3; 43,38,37;,
			3; 43,39,38;,
			3; 43,40,39;,
			3; 43,41,40;,
			3; 43,42,41;,
			3; 43,34,42;,
			3; 46,45,44;,
			3; 46,44,47;,
			3; 46,47,48;,
			3; 46,48,49;,
			3; 46,49,50;,
			3; 46,50,51;,
			3; 46,51,52;,
			3; 46,52,53;,
			3; 46,53,54;,
			3; 46,54,45;,
			3; 45,56,55;,
			3; 45,55,44;,
			3; 44,55,57;,
			3; 44,57,47;,
			3; 47,57,58;,
			3; 47,58,48;,
			3; 48,58,59;,
			3; 48,59,49;,
			3; 49,59,60;,
			3; 49,60,50;,
			3; 50,60,61;,
			3; 50,61,51;,
			3; 51,61,62;,
			3; 51,62,52;,
			3; 52,62,63;,
			3; 52,63,53;,
			3; 53,63,64;,
			3; 53,64,54;,
			3; 54,64,56;,
			3; 54,56,45;,
			3; 65,55,56;,
			3; 65,57,55;,
			3; 65,58,57;,
			3; 65,59,58;,
			3; 65,60,59;,
			3; 65,61,60;,
			3; 65,62,61;,
			3; 65,63,62;,
			3; 65,64,63;,
			3; 65,56,64;;
			MeshMaterialList {
				1;
			120;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material brownlips {
					0.142900;0.065300;0.040800;1.000000;;
					25.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame handle1 {
		Mesh mesh-handle1 {
			66;
			-0.304116;0.007837;1.185230;,
			-0.301059;-0.001568;1.185230;,
			-0.317061;-0.001568;1.185230;,
			-0.312117;0.013649;1.185230;,
			-0.322005;0.013649;1.185230;,
			-0.330005;0.007837;1.185230;,
			-0.333061;-0.001568;1.185230;,
			-0.330005;-0.010973;1.185230;,
			-0.322005;-0.016786;1.185230;,
			-0.312117;-0.016786;1.185230;,
			-0.304116;-0.010973;1.185230;,
			-0.304116;0.007837;-1.181480;,
			-0.301059;-0.001568;-1.181480;,
			-0.312117;0.013649;-1.181480;,
			-0.322005;0.013649;-1.181480;,
			-0.330005;0.007837;-1.181480;,
			-0.333061;-0.001568;-1.181480;,
			-0.330005;-0.010973;-1.181480;,
			-0.322005;-0.016786;-1.181480;,
			-0.312117;-0.016786;-1.181480;,
			-0.304116;-0.010973;-1.181480;,
			-0.317061;-0.001568;-1.181480;,
			-0.296010;-0.016731;1.021900;,
			-0.291070;-0.001524;1.021900;,
			-0.316941;-0.001524;1.021900;,
			-0.308946;-0.026130;1.021900;,
			-0.324936;-0.026130;1.021900;,
			-0.337873;-0.016731;1.021900;,
			-0.342813;-0.001524;1.021900;,
			-0.337871;0.013683;1.021900;,
			-0.324936;0.023081;1.021900;,
			-0.308946;0.023081;1.021900;,
			-0.296010;0.013683;1.021900;,
			-0.296010;-0.016731;1.195930;,
			-0.291070;-0.001524;1.195930;,
			-0.308946;-0.026130;1.195930;,
			-0.324936;-0.026130;1.195930;,
			-0.337873;-0.016731;1.195930;,
			-0.342813;-0.001524;1.195930;,
			-0.337871;0.013683;1.195930;,
			-0.324936;0.023081;1.195930;,
			-0.308946;0.023081;1.195930;,
			-0.296010;0.013683;1.195930;,
			-0.316941;-0.001524;1.195930;,
			-0.296010;-0.016731;-1.195930;,
			-0.291070;-0.001524;-1.195930;,
			-0.316941;-0.001524;-1.195930;,
			-0.308946;-0.026130;-1.195930;,
			-0.324936;-0.026130;-1.195930;,
			-0.337873;-0.016731;-1.195930;,
			-0.342813;-0.001524;-1.195930;,
			-0.337871;0.013683;-1.195930;,
			-0.324936;0.023081;-1.195930;,
			-0.308946;0.023081;-1.195930;,
			-0.296010;0.013683;-1.195930;,
			-0.296010;-0.016731;-1.021900;,
			-0.291070;-0.001524;-1.021900;,
			-0.308946;-0.026130;-1.021900;,
			-0.324936;-0.026130;-1.021900;,
			-0.337873;-0.016731;-1.021900;,
			-0.342813;-0.001524;-1.021900;,
			-0.337871;0.013683;-1.021900;,
			-0.324936;0.023081;-1.021900;,
			-0.308946;0.023081;-1.021900;,
			-0.296010;0.013683;-1.021900;,
			-0.316941;-0.001524;-1.021900;;

			120;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 2,3,4;,
			3; 2,4,5;,
			3; 2,5,6;,
			3; 2,6,7;,
			3; 2,7,8;,
			3; 2,8,9;,
			3; 2,9,10;,
			3; 2,10,1;,
			3; 1,12,11;,
			3; 1,11,0;,
			3; 0,11,13;,
			3; 0,13,3;,
			3; 3,13,14;,
			3; 3,14,4;,
			3; 4,14,15;,
			3; 4,15,5;,
			3; 5,15,16;,
			3; 5,16,6;,
			3; 6,16,17;,
			3; 6,17,7;,
			3; 7,17,18;,
			3; 7,18,8;,
			3; 8,18,19;,
			3; 8,19,9;,
			3; 9,19,20;,
			3; 9,20,10;,
			3; 10,20,12;,
			3; 10,12,1;,
			3; 21,11,12;,
			3; 21,13,11;,
			3; 21,14,13;,
			3; 21,15,14;,
			3; 21,16,15;,
			3; 21,17,16;,
			3; 21,18,17;,
			3; 21,19,18;,
			3; 21,20,19;,
			3; 21,12,20;,
			3; 24,23,22;,
			3; 24,22,25;,
			3; 24,25,26;,
			3; 24,26,27;,
			3; 24,27,28;,
			3; 24,28,29;,
			3; 24,29,30;,
			3; 24,30,31;,
			3; 24,31,32;,
			3; 24,32,23;,
			3; 23,34,33;,
			3; 23,33,22;,
			3; 22,33,35;,
			3; 22,35,25;,
			3; 25,35,36;,
			3; 25,36,26;,
			3; 26,36,37;,
			3; 26,37,27;,
			3; 27,37,38;,
			3; 27,38,28;,
			3; 28,38,39;,
			3; 28,39,29;,
			3; 29,39,40;,
			3; 29,40,30;,
			3; 30,40,41;,
			3; 30,41,31;,
			3; 31,41,42;,
			3; 31,42,32;,
			3; 32,42,34;,
			3; 32,34,23;,
			3; 43,33,34;,
			3; 43,35,33;,
			3; 43,36,35;,
			3; 43,37,36;,
			3; 43,38,37;,
			3; 43,39,38;,
			3; 43,40,39;,
			3; 43,41,40;,
			3; 43,42,41;,
			3; 43,34,42;,
			3; 46,45,44;,
			3; 46,44,47;,
			3; 46,47,48;,
			3; 46,48,49;,
			3; 46,49,50;,
			3; 46,50,51;,
			3; 46,51,52;,
			3; 46,52,53;,
			3; 46,53,54;,
			3; 46,54,45;,
			3; 45,56,55;,
			3; 45,55,44;,
			3; 44,55,57;,
			3; 44,57,47;,
			3; 47,57,58;,
			3; 47,58,48;,
			3; 48,58,59;,
			3; 48,59,49;,
			3; 49,59,60;,
			3; 49,60,50;,
			3; 50,60,61;,
			3; 50,61,51;,
			3; 51,61,62;,
			3; 51,62,52;,
			3; 52,62,63;,
			3; 52,63,53;,
			3; 53,63,64;,
			3; 53,64,54;,
			3; 54,64,56;,
			3; 54,56,45;,
			3; 65,55,56;,
			3; 65,57,55;,
			3; 65,58,57;,
			3; 65,59,58;,
			3; 65,60,59;,
			3; 65,61,60;,
			3; 65,62,61;,
			3; 65,63,62;,
			3; 65,64,63;,
			3; 65,56,64;;
			MeshMaterialList {
				1;
			120;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material brownlips {
					0.142900;0.065300;0.040800;1.000000;;
					25.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

