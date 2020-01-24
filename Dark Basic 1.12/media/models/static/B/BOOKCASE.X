xof 0302txt 0064
//  DV7225 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame book_shelf {
		Mesh mesh-book_shelf {
			16;
			-0.439250;0.175000;-0.787500;,
			-0.439250;0.175000;0.787500;,
			-0.439250;-0.175000;-0.787500;,
			0.439250;-0.175000;0.787500;,
			0.439250;0.175000;0.787500;,
			0.439250;-0.175000;-0.787500;,
			-0.439250;-0.175000;0.787500;,
			0.439250;0.175000;-0.787500;,
			-0.420000;0.175000;0.770875;,
			-0.420000;0.175000;-0.769125;,
			0.420000;0.175000;0.770875;,
			0.420000;0.175000;-0.769125;,
			-0.420000;-0.175000;0.770875;,
			-0.420000;-0.175000;-0.769125;,
			0.420000;-0.175000;-0.769125;,
			0.420000;-0.175000;0.770875;;

			28;
			3; 2,1,0;,
			3; 5,4,3;,
			3; 6,4,1;,
			3; 7,2,0;,
			3; 8,1,4;,
			3; 1,8,9;,
			3; 11,10,4;,
			3; 9,11,7;,
			3; 2,6,3;,
			3; 13,8,12;,
			3; 14,10,11;,
			3; 8,10,15;,
			3; 11,9,13;,
			3; 3,6,2;,
			3; 2,6,1;,
			3; 5,7,4;,
			3; 6,3,4;,
			3; 7,5,2;,
			3; 4,10,8;,
			3; 9,0,1;,
			3; 4,7,11;,
			3; 7,0,9;,
			3; 3,5,2;,
			3; 13,9,8;,
			3; 14,15,10;,
			3; 15,12,8;,
			3; 13,14,11;,
			3; 2,5,3;;
  MeshNormals {
    6;
  -1.000;0.000;0.000;,
  0.000;-1.000;0.000;,
  0.000;0.000;1.000;,
  1.000;0.000;0.000;,
  0.000;1.000;0.000;,
  0.000;0.000;-1.000;;

  28;
  3;0,0,0;,
  3;3,3,3;,
  3;2,2,2;,
  3;5,5,5;,
  3;4,4,4;,
  3;4,4,4;,
  3;4,4,4;,
  3;4,4,4;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;2,2,2;,
  3;5,5,5;,
  3;4,4,4;,
  3;4,4,4;,
  3;4,4,4;,
  3;4,4,4;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;;

}

			MeshMaterialList {
				1;
			28;
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
				Material ltbrown {
					0.277600;0.114300;0.053100;1.000000;;
					60.000000;
					0.300000;0.123500;0.057400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

