xof 0302txt 0064
//  DV7471 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame tent {
		Mesh mesh-tent {
			12;
			-0.000079;0.857111;-1.499950;,
			0.771321;-0.857111;-1.499990;,
			1.028450;0.428556;-1.500000;,
			-1.028610;0.428556;-1.499890;,
			-1.028610;-0.857111;-1.499890;,
			-0.685768;-0.857111;-1.499910;,
			-1.028450;0.428556;1.500000;,
			1.028610;0.428556;1.499890;,
			-1.028450;-0.857111;1.500000;,
			1.028450;-0.857111;-1.500000;,
			1.028610;-0.857111;1.499890;,
			0.000079;0.857111;1.499950;;

			30;
			3; 2,1,0;,
			3; 5,4,3;,
			3; 0,3,6;,
			3; 7,2,0;,
			3; 3,4,8;,
			3; 10,9,2;,
			3; 6,8,7;,
			3; 1,9,2;,
			3; 3,5,0;,
			3; 3,0,11;,
			3; 2,7,11;,
			3; 4,3,6;,
			3; 9,10,7;,
			3; 7,10,6;,
			3; 2,9,1;,
			3; 3,0,5;,
			3; 6,11,0;,
			3; 0,11,7;,
			3; 8,6,3;,
			3; 2,7,10;,
			3; 7,11,6;,
			3; 8,10,7;,
			3; 2,0,1;,
			3; 3,4,5;,
			3; 11,6,3;,
			3; 11,0,2;,
			3; 6,8,4;,
			3; 7,2,9;,
			3; 6,11,7;,
			3; 10,8,6;;
  MeshNormals {
    10;
  -0.000;0.000;-1.000;,
  1.000;0.000;-0.000;,
  0.385;-0.923;-0.000;,
  0.000;0.000;1.000;,
  -1.000;0.000;0.000;,
  -0.000;1.000;0.000;,
  -0.385;0.923;0.000;,
  0.385;0.923;-0.000;,
  -0.385;-0.923;0.000;,
  -0.000;-1.000;0.000;;

  30;
  3;0,0,0;,
  3;0,0,0;,
  3;5,6,6;,
  3;7,7,5;,
  3;4,4,4;,
  3;1,1,1;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;2,9,9;,
  3;8,8,9;,
  3;1,1,1;,
  3;4,4,4;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;6,5,5;,
  3;5,5,7;,
  3;4,4,4;,
  3;1,1,1;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;9,2,2;,
  3;9,9,8;,
  3;1,1,1;,
  3;4,4,4;,
  3;0,0,0;,
  3;0,0,0;;

}

			MeshMaterialList {
				1;
			30;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

}

