xof 0302txt 0064
//  DV3610 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame eves {
		Mesh mesh-eves {
			14;
			-6.000000;1.747200;-1.999998;,
			-6.000000;1.747200;-4.000002;,
			-6.000000;0.652800;-6.000000;,
			-6.000000;0.652800;0.000000;,
			6.000000;1.747200;-4.000002;,
			6.000000;1.747200;-1.999998;,
			6.000000;0.652800;0.000000;,
			6.000000;0.652800;-6.000000;,
			6.000000;1.747200;1.999998;,
			6.000000;1.747200;4.000002;,
			6.000000;0.652800;6.000000;,
			-6.000000;1.747200;4.000002;,
			-6.000000;1.747200;1.999998;,
			-6.000000;0.652800;6.000000;;

			4;
			4; 0,1,2,3;,
			4; 4,5,6,7;,
			4; 8,9,10,6;,
			4; 11,12,3,13;;
			MeshMaterialList {
				1;
			4;
				0,
				0,
				0,
				0;;
				Material black {
					0.002000;0.002000;0.002000;1.000000;;
					157.360000;
					0.518400;0.518400;0.518400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame roof {
		Mesh mesh-roof {
			14;
			-6.000000;1.747200;-4.000002;,
			-6.000000;1.747200;-1.999998;,
			6.000000;1.747200;-1.999998;,
			6.000000;1.747200;-4.000002;,
			-6.000000;0.652800;0.000000;,
			6.000000;0.652800;0.000000;,
			6.000000;0.652800;-6.000000;,
			-6.000000;0.652800;-6.000000;,
			-6.000000;0.652800;6.000000;,
			6.000000;0.652800;6.000000;,
			6.000000;1.747200;4.000002;,
			-6.000000;1.747200;4.000002;,
			-6.000000;1.747200;1.999998;,
			6.000000;1.747200;1.999998;;

			6;
			4; 0,1,2,3;,
			4; 4,5,2,1;,
			4; 6,7,0,3;,
			4; 8,9,10,11;,
			4; 5,4,12,13;,
			4; 12,11,10,13;;
			MeshMaterialList {
				1;
			6;
				0,
				0,
				0,
				0,
				0,
				0;;
				Material grey {
					0.183700;0.183700;0.183700;1.000000;;
					65.890000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame walls {
		Mesh mesh-walls {
			10;
			-6.000000;-1.747200;-6.000000;,
			-6.000000;0.652800;-6.000000;,
			6.000000;0.652800;-6.000000;,
			6.000000;-1.747200;-6.000000;,
			6.000000;-1.747200;6.000000;,
			-6.000000;-1.747200;6.000000;,
			6.000000;0.652800;0.000000;,
			-6.000000;0.652800;6.000000;,
			-6.000000;0.652800;0.000000;,
			6.000000;0.652800;6.000000;;

			9;
			4; 0,1,2,3;,
			4; 4,5,0,3;,
			3; 3,2,6;,
			3; 7,8,5;,
			4; 7,5,4,9;,
			3; 1,0,8;,
			3; 5,8,0;,
			3; 9,4,6;,
			3; 3,6,4;;
			MeshMaterialList {
				1;
			9;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0;;
				Material grey {
					0.183700;0.183700;0.183700;1.000000;;
					65.890000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
