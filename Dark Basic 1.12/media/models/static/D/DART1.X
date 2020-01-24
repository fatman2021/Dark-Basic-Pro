xof 0302txt 0064
//  DV7270 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame body {
		Mesh mesh-body {
			6;
			0.000000;0.025962;0.006700;,
			-0.006700;0.025962;0.000000;,
			0.000000;0.059463;0.000000;,
			0.000000;0.025962;-0.006700;,
			0.006700;0.025962;0.000000;,
			0.000000;0.012563;0.000000;;

			8;
			3; 2,1,0;,
			3; 3,1,2;,
			3; 4,3,2;,
			3; 4,2,0;,
			3; 0,1,5;,
			3; 1,3,5;,
			3; 5,3,4;,
			3; 5,4,0;;
  MeshNormals {
    12;
  -0.705;-0.083;0.705;,
  0.667;-0.333;0.667;,
  -0.700;0.140;0.700;,
  -0.705;-0.083;-0.705;,
  0.705;-0.083;-0.705;,
  -0.667;-0.333;0.667;,
  0.705;-0.083;0.705;,
  0.700;0.140;0.700;,
  -0.700;0.140;-0.700;,
  0.667;-0.333;-0.667;,
  0.700;0.140;-0.700;,
  -0.667;-0.333;-0.667;;

  8;
  3;2,0,0;,
  3;3,3,8;,
  3;4,4,10;,
  3;6,7,6;,
  3;0,0,5;,
  3;3,3,11;,
  3;9,4,4;,
  3;1,6,6;;

}

			MeshMaterialList {
				1;
			8;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0;;
				Material red {
					0.771400;0.000000;0.000000;1.000000;;
					136.430000;
					0.885700;0.000000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame fins {
		Mesh mesh-fins {
			10;
			0.000000;0.072862;0.000000;,
			0.000000;0.079563;-0.013400;,
			0.000000;0.066163;-0.013400;,
			0.000000;0.079563;0.013400;,
			0.000000;0.066163;0.013400;,
			0.000000;0.059463;0.000000;,
			0.013400;0.079563;0.000000;,
			0.013400;0.066163;0.000000;,
			-0.013400;0.079563;0.000000;,
			-0.013400;0.066163;0.000000;;

			16;
			3; 2,1,0;,
			3; 0,1,2;,
			3; 4,0,3;,
			3; 4,0,5;,
			3; 7,6,0;,
			3; 0,6,7;,
			3; 9,0,8;,
			3; 9,0,5;,
			3; 0,5,2;,
			3; 2,5,0;,
			3; 4,5,0;,
			3; 4,3,0;,
			3; 0,5,7;,
			3; 7,5,0;,
			3; 9,5,0;,
			3; 9,8,0;;
  MeshNormals {
    4;
  1.000;0.000;0.000;,
  0.000;0.000;1.000;,
  0.000;0.000;-1.000;,
  -1.000;0.000;0.000;;

  16;
  3;0,0,0;,
  3;3,3,3;,
  3;0,0,0;,
  3;3,3,3;,
  3;1,1,1;,
  3;2,2,2;,
  3;1,1,1;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;0,0,0;,
  3;3,3,3;,
  3;1,1,1;,
  3;2,2,2;,
  3;1,1,1;,
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
				Material red {
					0.771400;0.000000;0.000000;1.000000;;
					136.430000;
					0.885700;0.000000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
