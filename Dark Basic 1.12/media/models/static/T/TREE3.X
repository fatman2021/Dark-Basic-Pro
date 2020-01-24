xof 0302txt 0064
//  DV7410 Copyright Viewpoint Datalabs Intl., Inc.
//  www.viewpoint.com, 800-643-8303, 801-229-3333
//  for Microsoft Corporation DirectX format only
//  see license agreement for description of rights
//  Model by Viewpoint Datalabs Intl., Inc.

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
	Frame trunk {
		Mesh mesh-trunk {
			4;
			0.544013;-2.500000;0.252995;,
			0.308683;1.995210;0.492516;,
			0.064971;-2.500000;0.252995;,
			0.304492;-2.500000;0.612276;;

			4;
			3; 2,1,0;,
			3; 3,1,2;,
			3; 0,1,3;,
			3; 0,3,2;;
  MeshNormals {
    4;
  0.000;0.053;-0.999;,
  0.000;-1.000;0.000;,
  0.832;0.014;0.555;,
  -0.832;0.016;0.555;;

  4;
  3;0,0,0;,
  3;3,3,3;,
  3;2,2,2;,
  3;1,1,1;;

}

			MeshMaterialList {
				1;
			4;
				0,
				0,
				0,
				0;;
				Material lighttan3 {
					0.179600;0.082900;0.013900;1.000000;;
					177.520000;
					0.828600;0.805700;0.585100;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame palm_leave {
		Mesh mesh-palm_leave {
			13;
			0.249402;2.290420;-0.611677;,
			0.308683;1.995210;0.492516;,
			-0.142215;2.500000;-0.587725;,
			0.605689;2.500000;-0.611677;,
			1.318260;2.500000;0.457785;,
			0.902097;2.290420;0.825450;,
			0.878743;2.500000;1.359580;,
			-0.831437;2.500000;1.181740;,
			-0.985928;2.290420;0.730240;,
			-1.045210;2.500000;0.338623;,
			0.154791;1.691620;-1.633230;,
			2.126050;1.691620;1.633230;,
			-2.126050;1.691620;1.181740;;

			24;
			3; 2,1,0;,
			3; 0,1,2;,
			3; 0,1,3;,
			3; 3,1,0;,
			3; 5,1,4;,
			3; 4,1,5;,
			3; 6,1,5;,
			3; 5,1,6;,
			3; 8,1,7;,
			3; 7,1,8;,
			3; 8,1,9;,
			3; 9,1,8;,
			3; 0,3,10;,
			3; 10,3,0;,
			3; 2,10,0;,
			3; 0,10,2;,
			3; 5,11,4;,
			3; 4,11,5;,
			3; 5,11,6;,
			3; 6,11,5;,
			3; 8,7,12;,
			3; 12,7,8;,
			3; 12,8,9;,
			3; 9,8,12;;
  MeshNormals {
    24;
  -0.035;0.987;-0.158;,
  -0.096;0.995;-0.019;,
  0.460;0.876;-0.142;,
  -0.506;0.861;-0.056;,
  0.118;-0.914;-0.387;,
  0.104;-0.993;0.054;,
  -0.367;-0.871;0.326;,
  0.190;-0.914;0.359;,
  0.125;-0.987;-0.102;,
  0.049;0.884;0.466;,
  -0.011;0.863;-0.505;,
  0.354;0.923;0.148;,
  0.432;-0.897;-0.099;,
  0.035;-0.987;0.158;,
  -0.354;-0.923;-0.148;,
  -0.460;-0.876;0.142;,
  0.506;-0.861;0.056;,
  -0.118;0.914;0.387;,
  -0.432;0.897;0.099;,
  0.367;0.871;-0.326;,
  -0.190;0.914;-0.359;,
  -0.125;0.987;0.102;,
  -0.049;-0.884;-0.466;,
  0.011;-0.863;0.505;;

  24;
  3;2,1,0;,
  3;13,5,15;,
  3;0,1,3;,
  3;16,5,13;,
  3;5,5,4;,
  3;17,1,1;,
  3;6,5,5;,
  3;1,1,19;,
  3;8,5,7;,
  3;20,1,21;,
  3;21,1,9;,
  3;22,5,8;,
  3;0,3,10;,
  3;23,16,13;,
  3;15,23,13;,
  3;0,10,2;,
  3;1,11,17;,
  3;4,14,5;,
  3;5,14,6;,
  3;19,11,1;,
  3;8,7,12;,
  3;18,20,21;,
  3;18,21,9;,
  3;22,8,12;;

}

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
				Material flpinegreen {
					0.106100;0.216300;0.085700;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

