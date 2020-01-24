xof 0302txt 0064
//  DV7290 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame fork {
		Mesh mesh-fork {
			12;
			0.020588;0.029853;0.000000;,
			0.020588;0.087500;0.000000;,
			0.010294;0.040147;0.005147;,
			0.000000;0.087500;0.000000;,
			-0.010294;0.040147;0.005147;,
			-0.020588;0.087500;0.000000;,
			-0.020588;0.029853;0.000000;,
			0.005147;0.014412;-0.005147;,
			-0.004118;0.014412;-0.005147;,
			0.010294;-0.077206;0.000000;,
			-0.010294;-0.077206;0.000000;,
			0.000000;-0.087500;0.000000;;

			20;
			3; 2,1,0;,
			3; 4,3,2;,
			3; 6,5,4;,
			3; 2,0,7;,
			3; 4,2,8;,
			3; 6,4,8;,
			3; 0,1,2;,
			3; 4,2,3;,
			3; 6,4,5;,
			3; 8,4,6;,
			3; 7,2,8;,
			3; 0,2,7;,
			3; 10,8,9;,
			3; 7,8,9;,
			3; 11,10,9;,
			3; 9,10,11;,
			3; 2,7,8;,
			3; 2,4,8;,
			3; 8,7,9;,
			3; 8,10,9;;
  MeshNormals {
    18;
  -0.209;0.262;-0.942;,
  -0.447;0.000;-0.894;,
  -0.182;0.132;-0.975;,
  0.000;-0.108;-0.994;,
  0.182;0.132;-0.974;,
  0.447;0.000;-0.894;,
  0.209;0.262;-0.942;,
  -0.011;0.202;-0.979;,
  0.000;0.000;1.000;,
  0.000;-0.037;-0.999;,
  -0.011;-0.203;0.979;,
  -0.209;-0.262;0.942;,
  0.209;-0.262;0.942;,
  0.447;0.000;0.894;,
  0.182;-0.132;0.975;,
  0.000;0.108;0.994;,
  -0.182;-0.132;0.974;,
  -0.447;0.000;0.894;;

  20;
  3;2,1,0;,
  3;4,3,2;,
  3;6,5,4;,
  3;2,0,7;,
  3;4,2,7;,
  3;6,4,7;,
  3;12,13,14;,
  3;16,14,15;,
  3;11,16,17;,
  3;10,16,11;,
  3;10,14,10;,
  3;12,14,10;,
  3;9,7,9;,
  3;10,10,8;,
  3;9,9,9;,
  3;8,8,8;,
  3;2,7,7;,
  3;14,16,10;,
  3;7,7,9;,
  3;10,8,8;;

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
				Material slvr1 {
					0.616300;0.616300;0.616300;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

