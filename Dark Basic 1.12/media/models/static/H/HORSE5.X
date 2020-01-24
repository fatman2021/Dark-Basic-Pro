xof 0302txt 0064
//  DV7321 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame knight {
		Mesh mesh-knight {
			17;
			-0.000011;0.012500;0.001563;,
			0.005197;0.006250;0.006771;,
			-0.005218;0.006250;0.006771;,
			-0.000011;0.002083;-0.006771;,
			0.001031;0.002083;0.000521;,
			-0.001052;0.002083;0.000521;,
			-0.000011;-0.006250;0.001563;,
			0.005197;-0.012500;0.001563;,
			0.001614;-0.012500;0.006542;,
			0.005218;-0.008333;0.001563;,
			-0.004239;-0.012500;-0.001500;,
			0.001594;-0.012500;-0.003396;,
			-0.004239;-0.008333;-0.001500;,
			0.001594;-0.008333;-0.003396;,
			-0.004239;-0.008333;0.004646;,
			-0.004239;-0.012500;0.004646;,
			0.001614;-0.008333;0.006542;;

			23;
			3; 2,1,0;,
			3; 1,4,3;,
			3; 3,2,0;,
			3; 4,5,3;,
			3; 5,4,6;,
			3; 6,4,1;,
			3; 3,0,1;,
			3; 3,5,2;,
			5; 9,6,9,8,7;,
			4; 11,7,8,10;,
			3; 13,12,6;,
			4; 12,10,15,14;,
			4; 16,14,15,8;,
			3; 9,16,8;,
			3; 14,16,6;,
			3; 9,6,16;,
			3; 15,10,8;,
			4; 7,11,13,9;,
			4; 13,11,10,12;,
			3; 6,12,14;,
			3; 6,9,13;,
			3; 5,6,2;,
			3; 2,6,1;;
  MeshNormals {
    26;
  0.000;0.640;0.768;,
  -0.868;-0.167;-0.467;,
  -0.000;1.000;-0.001;,
  -0.000;-0.994;-0.110;,
  0.726;-0.645;-0.241;,
  -0.726;-0.645;-0.241;,
  0.000;-0.124;-0.992;,
  0.000;0.000;1.000;,
  0.114;0.000;0.993;,
  -0.309;0.000;-0.951;,
  0.000;-1.000;0.000;,
  0.809;0.000;-0.588;,
  -0.300;0.929;-0.218;,
  0.114;0.929;-0.353;,
  -1.000;0.000;0.000;,
  0.810;0.000;0.586;,
  -0.308;0.000;0.951;,
  -0.837;0.342;-0.427;,
  0.906;0.047;-0.420;,
  -0.906;0.047;-0.420;,
  -0.000;-0.385;0.923;,
  0.115;0.929;0.351;,
  0.837;0.342;-0.427;,
  0.868;-0.167;-0.467;,
  -0.299;0.929;0.218;,
  0.370;0.929;-0.001;;

  23;
  3;0,0,0;,
  3;18,4,3;,
  3;17,19,17;,
  3;4,5,3;,
  3;6,6,6;,
  3;23,4,18;,
  3;22,22,18;,
  3;3,5,19;,
  5;8,7,8,8,7;,
  4;10,10,10,10;,
  3;13,12,2;,
  4;14,14,14,14;,
  4;16,16,16,8;,
  3;8,15,8;,
  3;24,21,2;,
  3;25,2,21;,
  3;10,10,10;,
  4;11,11,11,11;,
  4;9,9,9,9;,
  3;2,12,24;,
  3;2,25,13;,
  3;5,1,19;,
  3;20,7,20;;

}

			MeshMaterialList {
				1;
			23;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material bone1 {
					0.983700;0.795900;0.469400;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

