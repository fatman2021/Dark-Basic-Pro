xof 0302txt 0064
//  DV7449 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame handle {
		Mesh mesh-handle {
			5;
			0.003871;0.017198;0.003318;,
			-0.003871;0.017198;0.003318;,
			-0.007742;-0.052479;-0.000553;,
			0.007742;-0.052479;-0.000553;,
			0.000000;-0.060221;-0.000553;;

			6;
			3; 2,1,0;,
			3; 0,1,2;,
			3; 4,2,3;,
			3; 3,2,4;,
			3; 0,3,2;,
			3; 2,3,0;;
  MeshNormals {
    4;
  0.000;0.055;-0.998;,
  0.000;0.000;1.000;,
  0.000;-0.055;0.998;,
  0.000;0.000;-1.000;;

  6;
  3;0,0,0;,
  3;2,2,1;,
  3;3,0,0;,
  3;1,1,1;,
  3;0,0,0;,
  3;1,1,2;;

}

			MeshMaterialList {
				1;
			6;
				0,
				0,
				0,
				0,
				0,
				0;;
				Material archwhite {
					0.995900;0.995900;0.995900;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame head {
		Mesh mesh-head {
			11;
			0.006968;0.035779;-0.004424;,
			0.006968;0.048166;-0.004424;,
			-0.006968;0.048166;-0.004424;,
			0.000000;0.059779;-0.000553;,
			0.015484;0.051263;-0.000553;,
			-0.015484;0.051263;-0.000553;,
			-0.006968;0.035779;-0.004424;,
			0.015484;0.032682;-0.000553;,
			0.003871;0.017198;0.003318;,
			-0.003871;0.017198;0.003318;,
			-0.015484;0.032682;-0.000553;;

			26;
			3; 2,1,0;,
			3; 0,1,2;,
			3; 2,1,3;,
			3; 3,1,2;,
			3; 3,1,4;,
			3; 4,1,3;,
			3; 5,2,3;,
			3; 3,2,5;,
			3; 6,2,5;,
			3; 5,2,6;,
			3; 1,0,7;,
			3; 7,0,1;,
			3; 7,0,8;,
			3; 8,0,7;,
			3; 6,0,8;,
			3; 8,0,6;,
			3; 10,6,9;,
			3; 9,6,10;,
			3; 0,6,2;,
			3; 2,6,0;,
			3; 5,10,6;,
			3; 6,10,5;,
			3; 7,4,1;,
			3; 1,4,7;,
			3; 8,9,6;,
			3; 6,9,8;;
  MeshNormals {
    22;
  0.186;-0.179;-0.966;,
  0.198;0.175;-0.964;,
  -0.198;0.175;-0.964;,
  0.000;-0.385;0.923;,
  -0.349;-0.188;0.918;,
  0.349;-0.188;0.918;,
  0.186;0.179;0.966;,
  -0.336;0.220;0.916;,
  -0.056;0.392;0.918;,
  -0.056;-0.392;-0.918;,
  -0.336;-0.220;-0.916;,
  -0.186;0.179;0.966;,
  -0.198;-0.175;0.964;,
  0.198;-0.175;0.964;,
  -0.000;0.385;-0.923;,
  0.349;0.188;-0.918;,
  -0.349;0.188;-0.918;,
  -0.186;-0.179;-0.966;,
  0.336;-0.220;-0.916;,
  0.056;-0.392;-0.918;,
  0.056;0.392;0.918;,
  0.336;0.220;0.916;;

  26;
  3;2,1,0;,
  3;11,12,13;,
  3;13,12,3;,
  3;14,1,2;,
  3;3,12,4;,
  3;15,1,14;,
  3;5,13,3;,
  3;14,2,16;,
  3;6,13,5;,
  3;16,2,17;,
  3;12,11,7;,
  3;18,0,1;,
  3;7,11,8;,
  3;19,0,18;,
  3;17,0,19;,
  3;8,11,6;,
  3;10,17,9;,
  3;20,6,21;,
  3;0,17,2;,
  3;13,6,11;,
  3;5,21,6;,
  3;17,10,16;,
  3;7,4,12;,
  3;1,15,18;,
  3;19,9,17;,
  3;6,20,8;;

}

			MeshMaterialList {
				1;
			26;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

}

