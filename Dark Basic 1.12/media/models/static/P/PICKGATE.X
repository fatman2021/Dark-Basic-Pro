xof 0302txt 0064
//  DV7295 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame rails {
		Mesh mesh-rails {
			20;
			0.333334;-0.388000;0.013333;,
			-0.466666;0.120000;0.013334;,
			-0.333334;0.120000;0.013334;,
			-0.466666;0.200000;0.013334;,
			0.466666;0.200000;0.013333;,
			-0.466666;-0.466666;0.013334;,
			0.466666;-0.388000;0.013333;,
			0.466666;0.200000;-0.013334;,
			-0.466666;0.120000;-0.013333;,
			-0.333334;0.120000;-0.013333;,
			-0.466666;-0.468000;-0.013333;,
			-0.466666;-0.388000;-0.013333;,
			0.466666;-0.388000;-0.013334;,
			0.466666;-0.466666;0.013333;,
			0.333334;-0.388000;-0.013334;,
			-0.466666;0.200000;-0.013333;,
			0.466666;0.120000;-0.013334;,
			-0.466666;-0.388000;0.013334;,
			0.466666;-0.468000;-0.013334;,
			0.466666;0.120000;0.013333;;

			38;
			3; 2,1,0;,
			3; 4,3,2;,
			3; 6,0,5;,
			3; 9,8,7;,
			3; 5,11,10;,
			3; 13,12,6;,
			3; 9,12,14;,
			3; 3,15,8;,
			3; 16,7,4;,
			3; 16,2,9;,
			3; 7,15,3;,
			3; 0,8,14;,
			3; 6,9,2;,
			3; 0,11,17;,
			3; 18,5,10;,
			3; 0,6,2;,
			3; 2,19,4;,
			3; 3,1,2;,
			3; 5,13,6;,
			3; 0,17,5;,
			3; 7,16,9;,
			3; 8,15,7;,
			3; 5,17,11;,
			3; 13,18,12;,
			3; 14,8,9;,
			3; 8,1,3;,
			3; 4,19,16;,
			3; 16,19,2;,
			3; 3,4,7;,
			3; 0,1,8;,
			3; 6,12,9;,
			3; 0,14,11;,
			3; 18,13,5;,
			3; 14,11,18;,
			3; 10,18,11;,
			3; 12,18,14;,
			3; 14,18,11;,
			3; 18,10,11;;
  MeshNormals {
    11;
  0.000;0.000;1.000;,
  -0.000;-0.000;-1.000;,
  0.536;0.844;0.000;,
  0.000;1.000;0.000;,
  0.000;-1.000;0.000;,
  -1.000;0.000;0.000;,
  0.000;-0.999;0.050;,
  -0.876;-0.482;-0.000;,
  -0.536;-0.844;-0.000;,
  1.000;0.000;0.000;,
  0.876;0.482;0.000;;

  38;
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;5,5,5;,
  3;9,10,10;,
  3;1,1,1;,
  3;5,5,7;,
  3;9,9,9;,
  3;4,4,4;,
  3;3,3,3;,
  3;8,7,8;,
  3;10,2,2;,
  3;3,3,3;,
  3;6,6,6;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;5,5,5;,
  3;9,9,10;,
  3;1,1,1;,
  3;7,7,5;,
  3;9,9,9;,
  3;4,4,4;,
  3;3,3,3;,
  3;8,7,7;,
  3;10,10,2;,
  3;3,3,3;,
  3;6,6,6;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;;

}

  MeshNormals {
    11;
  0.000;0.000;1.000;,
  -0.000;-0.000;-1.000;,
  0.536;0.844;0.000;,
  0.000;1.000;0.000;,
  0.000;-1.000;0.000;,
  -1.000;0.000;0.000;,
  0.000;-0.999;0.050;,
  -0.876;-0.482;-0.000;,
  -0.536;-0.844;-0.000;,
  1.000;0.000;0.000;,
  0.876;0.482;0.000;;

  38;
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;5,5,5;,
  3;9,10,10;,
  3;1,1,1;,
  3;5,5,7;,
  3;9,9,9;,
  3;4,4,4;,
  3;3,3,3;,
  3;8,7,8;,
  3;10,2,2;,
  3;3,3,3;,
  3;6,6,6;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;5,5,5;,
  3;9,9,10;,
  3;1,1,1;,
  3;7,7,5;,
  3;9,9,9;,
  3;4,4,4;,
  3;3,3,3;,
  3;8,7,7;,
  3;10,10,2;,
  3;3,3,3;,
  3;6,6,6;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;;

}

			MeshMaterialList {
				1;
			38;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material archwhite {
					0.995900;0.995900;0.995900;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame pickets {
		Mesh mesh-pickets {
			29;
			-0.333334;0.333334;0.013334;,
			-0.400000;0.400000;0.013334;,
			-0.466666;-0.600000;0.013334;,
			-0.333334;-0.600000;0.013333;,
			-0.066667;-0.600000;0.013333;,
			-0.200000;-0.600000;0.013333;,
			-0.132000;0.533333;0.013334;,
			-0.068000;0.464000;0.013334;,
			0.201334;0.464000;0.013334;,
			0.132000;0.533333;0.013334;,
			0.066667;-0.600000;0.013333;,
			0.200000;-0.600000;0.013333;,
			0.466666;0.333334;0.013333;,
			0.400000;0.400000;0.013333;,
			0.333334;-0.600000;0.013333;,
			0.466666;-0.600000;0.013333;,
			-0.200000;0.400000;0.013334;,
			-0.333334;0.400000;0.013334;,
			-0.266666;0.466667;0.013334;,
			0.066667;0.533333;0.013334;,
			-0.066667;0.533333;0.013334;,
			0.000000;0.600000;0.013334;,
			0.333334;0.400000;0.013333;,
			0.200000;0.400000;0.013334;,
			0.266666;0.466667;0.013334;,
			-0.466666;0.333334;0.013334;,
			-0.201334;0.464000;0.013334;,
			0.068000;0.464000;0.013334;,
			0.333334;0.333334;0.013333;;

			42;
			3; 2,1,0;,
			3; 1,2,3;,
			3; 6,5,4;,
			3; 5,6,7;,
			3; 10,9,8;,
			3; 9,10,11;,
			3; 14,13,12;,
			3; 13,14,15;,
			3; 17,5,16;,
			3; 5,17,18;,
			3; 20,10,19;,
			3; 10,20,21;,
			3; 23,14,22;,
			3; 14,23,24;,
			3; 0,3,2;,
			3; 2,25,1;,
			3; 3,0,1;,
			3; 1,25,2;,
			3; 4,7,6;,
			3; 6,26,5;,
			3; 7,4,5;,
			3; 5,26,6;,
			3; 8,11,10;,
			3; 10,27,9;,
			3; 11,8,9;,
			3; 9,27,10;,
			3; 12,15,14;,
			3; 14,28,13;,
			3; 15,12,13;,
			3; 13,28,14;,
			3; 16,18,17;,
			3; 17,3,5;,
			3; 18,16,5;,
			3; 5,3,17;,
			3; 19,21,20;,
			3; 20,4,10;,
			3; 21,19,10;,
			3; 10,4,20;,
			3; 22,24,23;,
			3; 23,11,14;,
			3; 24,22,14;,
			3; 14,11,23;;
  MeshNormals {
    2;
  -0.000;0.000;-1.000;,
  0.000;0.000;1.000;;

  42;
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;1,1,1;,
  3;0,0,0;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;;

}

  MeshNormals {
    2;
  -0.000;0.000;-1.000;,
  0.000;0.000;1.000;;

  42;
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;1,1,1;,
  3;0,0,0;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;;

}

			MeshMaterialList {
				1;
			42;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material archwhite {
					0.995900;0.995900;0.995900;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

