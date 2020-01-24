xof 0302txt 0064
//  DV7395 Copyright Viewpoint Datalabs Intl., Inc.
//  www.viewpoint.com, 800-643-8303, 801-229-3333
//  for Microsoft Corporation DirectX format only
//  see license agreement for description of rights

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
	Frame base {
		Mesh mesh-base {
			12;
			0.003118;-0.016176;-0.014029;,
			0.003118;-0.025000;-0.014029;,
			0.013294;-0.016176;-0.000029;,
			-0.013353;-0.016176;-0.008676;,
			-0.013353;-0.025000;-0.008676;,
			-0.013353;-0.016176;0.008676;,
			-0.013353;-0.025000;0.008676;,
			0.003176;-0.016176;0.014029;,
			0.003176;-0.025000;0.014029;,
			0.013353;-0.016176;-0.000029;,
			0.013353;-0.025000;-0.000029;,
			0.013294;-0.025000;-0.000029;;

			13;
			3; 2,1,0;,
			3; 1,4,3;,
			3; 3,6,5;,
			3; 5,8,7;,
			3; 7,10,9;,
			3; 4,1,8;,
			3; 2,11,1;,
			3; 3,0,1;,
			3; 3,4,6;,
			3; 5,6,8;,
			3; 7,8,10;,
			3; 8,6,4;,
			3; 1,11,8;;
			MeshMaterialList {
				1;
			13;
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

	Frame pawn {
		Mesh mesh-pawn {
			23;
			0.000412;-0.007353;-0.005618;,
			0.003118;-0.016176;-0.014029;,
			0.013294;-0.016176;-0.000029;,
			0.000412;0.007353;-0.005618;,
			0.004471;-0.007353;-0.000029;,
			0.002235;0.016176;-0.011206;,
			0.004471;0.007353;-0.000029;,
			-0.001412;0.025000;-0.000029;,
			0.010353;0.016176;-0.000029;,
			-0.006176;-0.007353;-0.003500;,
			-0.013353;-0.016176;-0.008676;,
			-0.006176;-0.007353;0.003441;,
			-0.013353;-0.016176;0.008676;,
			0.000412;-0.007353;0.005559;,
			0.003176;-0.016176;0.014029;,
			0.013353;-0.016176;-0.000029;,
			-0.006176;0.007353;-0.003500;,
			-0.006176;0.007353;0.003441;,
			0.000412;0.007353;0.005559;,
			-0.010941;0.016176;-0.006971;,
			-0.010941;0.016176;0.006912;,
			0.002235;0.016176;0.011206;,
			0.010412;0.016176;-0.000029;;

			35;
			3; 2,1,0;,
			3; 4,0,3;,
			3; 6,3,5;,
			3; 8,5,7;,
			3; 1,10,9;,
			3; 10,12,11;,
			3; 12,14,13;,
			3; 13,15,4;,
			3; 0,9,16;,
			3; 16,11,17;,
			3; 11,13,18;,
			3; 13,4,6;,
			3; 5,16,19;,
			3; 19,17,20;,
			3; 20,18,21;,
			3; 21,6,22;,
			3; 5,19,7;,
			3; 19,20,7;,
			3; 20,21,7;,
			3; 21,22,7;,
			3; 0,4,2;,
			3; 3,6,4;,
			3; 5,8,6;,
			3; 9,0,1;,
			3; 11,9,10;,
			3; 13,11,12;,
			3; 13,14,15;,
			3; 16,3,0;,
			3; 16,9,11;,
			3; 18,17,11;,
			3; 6,18,13;,
			3; 5,3,16;,
			3; 19,16,17;,
			3; 20,17,18;,
			3; 21,18,6;;
			MeshMaterialList {
				1;
			35;
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

