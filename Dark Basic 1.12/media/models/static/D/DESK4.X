xof 0302txt 0064
//  DV7272 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame desktop {
		Mesh mesh-desktop {
			8;
			1.276540;0.526384;0.574600;,
			1.276540;0.526384;-0.574600;,
			-1.023460;0.526384;-0.574600;,
			1.276540;0.686217;-0.574600;,
			1.276540;0.686217;0.574600;,
			-1.023460;0.686217;0.574600;,
			-1.023460;0.686217;-0.574600;,
			-1.023460;0.526384;0.574600;;

			12;
			3; 2,1,0;,
			3; 5,4,3;,
			3; 2,3,1;,
			3; 5,6,2;,
			3; 0,5,7;,
			3; 3,4,0;,
			3; 0,7,2;,
			3; 3,6,5;,
			3; 2,6,3;,
			3; 2,7,5;,
			3; 0,4,5;,
			3; 0,1,3;;
  MeshNormals {
    6;
  0.000;-1.000;0.000;,
  -1.000;0.000;0.000;,
  0.000;0.000;-1.000;,
  0.000;1.000;0.000;,
  1.000;0.000;0.000;,
  0.000;0.000;1.000;;

  12;
  3;0,0,0;,
  3;3,3,3;,
  3;2,2,2;,
  3;1,1,1;,
  3;5,5,5;,
  3;4,4,4;,
  3;0,0,0;,
  3;3,3,3;,
  3;2,2,2;,
  3;1,1,1;,
  3;5,5,5;,
  3;4,4,4;;

}

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
				Material white {
					1.000000;1.000000;1.000000;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame desk {
		Mesh mesh-desk {
			16;
			1.276540;-0.462984;0.574600;,
			1.276540;-0.462984;-0.574600;,
			1.116700;-0.462984;-0.574600;,
			1.276540;0.526384;-0.574600;,
			1.116700;0.526384;-0.574600;,
			1.116700;-0.462984;0.574600;,
			1.116700;0.526384;0.574600;,
			1.276540;0.526384;0.574600;,
			-0.104424;-0.462984;0.574600;,
			-0.104424;-0.462984;-0.574600;,
			-1.023460;-0.462984;0.574600;,
			-0.104424;0.526384;-0.574600;,
			-1.023460;-0.462984;-0.574600;,
			-1.023460;0.526384;-0.574600;,
			-1.023460;0.526384;0.574600;,
			-0.104424;0.526384;0.574600;;

			20;
			3; 2,1,0;,
			3; 4,3,1;,
			3; 5,4,2;,
			3; 7,6,5;,
			3; 1,7,0;,
			3; 10,9,8;,
			3; 12,11,9;,
			3; 10,13,12;,
			3; 8,14,10;,
			3; 9,15,8;,
			3; 0,5,2;,
			3; 1,2,4;,
			3; 5,6,4;,
			3; 5,0,7;,
			3; 1,3,7;,
			3; 10,12,9;,
			3; 12,13,11;,
			3; 10,14,13;,
			3; 8,15,14;,
			3; 9,11,15;;
  MeshNormals {
    5;
  0.000;-1.000;0.000;,
  0.000;0.000;1.000;,
  1.000;0.000;0.000;,
  0.000;0.000;-1.000;,
  -1.000;0.000;0.000;;

  20;
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;1,1,1;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;1,1,1;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;1,1,1;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;1,1,1;,
  3;2,2,2;;

}

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
				Material fltan {
					0.661200;0.456700;0.129500;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

