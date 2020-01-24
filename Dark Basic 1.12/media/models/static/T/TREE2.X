xof 0302txt 0064
//  DV7286 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame fir {
		Mesh mesh-fir {
			7;
			0.000000;0.925000;-0.000001;,
			0.500000;-0.575000;-0.000001;,
			0.250000;-0.575000;0.432999;,
			-0.250000;-0.575000;0.432999;,
			-0.500000;-0.575000;-0.000001;,
			-0.250000;-0.575000;-0.432999;,
			0.250000;-0.575000;-0.432999;;

			10;
			3; 2,1,0;,
			3; 3,2,0;,
			3; 4,3,0;,
			3; 5,4,0;,
			3; 6,5,0;,
			3; 1,6,0;,
			3; 5,1,2;,
			3; 2,3,4;,
			3; 5,6,1;,
			3; 2,4,5;;
  MeshNormals {
    8;
  -0.000;1.000;-0.000;,
  0.949;0.316;-0.000;,
  0.474;0.316;0.822;,
  -0.474;0.316;0.822;,
  -0.949;0.316;-0.000;,
  -0.474;0.316;-0.822;,
  0.474;0.316;-0.822;,
  0.000;-1.000;0.000;;

  10;
  3;2,1,0;,
  3;3,2,0;,
  3;4,3,0;,
  3;5,4,0;,
  3;6,5,0;,
  3;1,6,0;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;,
  3;7,7,7;;

}

			MeshMaterialList {
				1;
			10;
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

	Frame trunk {
		Mesh mesh-trunk {
			12;
			0.075000;-0.575000;0.129499;,
			0.150000;-0.575000;-0.000001;,
			0.075000;-0.925000;0.129499;,
			-0.075000;-0.575000;0.129499;,
			-0.075000;-0.925000;0.129499;,
			-0.150000;-0.575000;-0.000001;,
			-0.150000;-0.925000;-0.000001;,
			-0.075000;-0.575000;-0.129499;,
			-0.075000;-0.925000;-0.129499;,
			0.075000;-0.575000;-0.129499;,
			0.075000;-0.925000;-0.129499;,
			0.150000;-0.925000;-0.000001;;

			16;
			3; 2,1,0;,
			3; 4,0,3;,
			3; 6,3,5;,
			3; 8,5,7;,
			3; 10,7,9;,
			3; 11,9,1;,
			3; 8,11,2;,
			3; 2,11,1;,
			3; 4,2,0;,
			3; 6,4,3;,
			3; 8,6,5;,
			3; 10,8,7;,
			3; 11,10,9;,
			3; 2,4,6;,
			3; 8,10,11;,
			3; 2,6,8;;
  MeshNormals {
    9;
  0.499;-0.000;0.866;,
  0.865;-0.000;0.501;,
  0.000;-1.000;0.000;,
  -0.499;0.000;0.866;,
  -0.865;0.000;-0.501;,
  -0.865;0.000;0.501;,
  0.865;-0.000;-0.501;,
  -0.499;0.000;-0.866;,
  0.499;0.000;-0.866;;

  16;
  3;0,1,0;,
  3;3,0,3;,
  3;5,3,5;,
  3;7,4,7;,
  3;8,7,8;,
  3;6,8,6;,
  3;2,2,2;,
  3;0,1,1;,
  3;3,0,0;,
  3;5,3,3;,
  3;7,4,4;,
  3;8,7,7;,
  3;6,8,8;,
  3;2,2,2;,
  3;2,2,2;,
  3;2,2,2;;

}

			MeshMaterialList {
				1;
			16;
				0,
				0,
				0,
				0,
				0,
				0,
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

}
