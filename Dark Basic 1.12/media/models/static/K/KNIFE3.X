xof 0302txt 0064
//  DV7332 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame blade {
		Mesh mesh-blade {
			5;
			-0.217714;2.360386;0.003629;,
			-0.090714;0.048986;0.003629;,
			0.290286;2.360386;0.003629;,
			0.290286;0.074386;0.003629;,
			0.163286;2.868397;0.003629;;

			6;
			3; 2,1,0;,
			3; 4,1,3;,
			3; 0,4,2;,
			3; 2,3,1;,
			3; 3,2,4;,
			3; 4,0,1;;
  MeshNormals {
    2;
  0.000;0.000;-1.000;,
  0.000;0.000;1.000;;

  6;
  3;0,0,0;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;;

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
				Material silver {
					0.616300;0.616300;0.616300;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame handle {
		Mesh mesh-handle {
			11;
			-0.090714;0.048986;0.003629;,
			0.290286;0.074386;0.003629;,
			0.290286;-0.052614;-0.123371;,
			0.290286;-0.052614;0.130629;,
			-0.090714;-0.052614;-0.123371;,
			-0.090714;-0.052614;0.130629;,
			0.290286;-2.440214;-0.097971;,
			0.290286;-2.465614;0.130629;,
			-0.217714;-2.440214;-0.097971;,
			-0.217714;-2.465614;0.130629;,
			0.036286;-2.719603;0.003629;;

			18;
			3; 2,1,0;,
			3; 0,1,3;,
			3; 0,5,4;,
			3; 2,3,1;,
			3; 7,3,6;,
			3; 4,5,8;,
			3; 6,2,4;,
			3; 5,3,7;,
			3; 10,8,9;,
			3; 6,8,10;,
			3; 7,6,10;,
			3; 9,7,10;,
			3; 0,4,2;,
			3; 3,5,0;,
			3; 3,2,6;,
			3; 5,9,8;,
			3; 4,8,6;,
			3; 7,9,5;;
  MeshNormals {
    17;
  0.013;-0.761;0.648;,
  0.047;-0.706;0.706;,
  0.019;-0.391;0.920;,
  0.019;-0.396;-0.918;,
  0.999;-0.037;0.000;,
  -1.000;0.000;0.000;,
  -0.950;0.310;0.034;,
  0.000;0.132;0.991;,
  0.959;0.280;0.031;,
  0.946;0.323;0.036;,
  0.724;0.686;0.076;,
  0.013;-0.761;-0.648;,
  0.047;-0.706;-0.706;,
  0.000;0.342;0.940;,
  0.000;0.163;-0.987;,
  0.000;0.447;-0.894;,
  -0.724;0.686;0.076;;

  18;
  3;2,1,0;,
  3;11,12,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;6,5,6;,
  3;4,4,8;,
  3;7,2,2;,
  3;3,3,14;,
  3;10,8,9;,
  3;7,7,13;,
  3;6,6,16;,
  3;14,14,15;,
  3;0,2,2;,
  3;3,3,11;,
  3;5,5,6;,
  3;4,9,8;,
  3;2,7,7;,
  3;14,14,3;;

}

			MeshMaterialList {
				1;
			18;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material brown {
					0.085700;0.014700;0.000000;1.000000;;
					65.890000;
					0.163300;0.024000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
