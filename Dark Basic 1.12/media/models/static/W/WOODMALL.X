xof 0302txt 0064
//  DV7376 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame handle {
		Mesh mesh-handle {
			18;
			0.013611;0.000000;-0.175000;,
			0.013611;0.000000;0.175000;,
			0.007130;0.011667;-0.175000;,
			0.007130;0.011667;0.175000;,
			-0.005833;0.011667;0.175000;,
			-0.005833;0.011667;-0.175000;,
			-0.012315;0.000000;-0.175000;,
			-0.012315;0.000000;0.175000;,
			-0.005833;-0.010370;0.175000;,
			-0.005833;-0.010370;-0.175000;,
			0.007130;-0.010370;0.175000;,
			0.007130;-0.010370;-0.175000;,
			-0.012315;0.000000;0.175000;,
			-0.005833;0.011667;0.175000;,
			0.013611;0.000000;0.175000;,
			0.007130;-0.010370;0.175000;,
			-0.005833;-0.010370;0.175000;,
			0.007130;0.011667;0.175000;;

			20;
			3; 2,1,0;,
			3; 4,3,2;,
			3; 6,4,5;,
			3; 8,7,6;,
			3; 10,8,9;,
			3; 1,10,11;,
			3; 0,9,6;,
			3; 2,3,1;,
			3; 2,5,4;,
			3; 6,7,4;,
			3; 6,9,8;,
			3; 9,11,10;,
			3; 11,0,1;,
			3; 6,5,2;,
			3; 0,11,9;,
			3; 6,2,0;,
			3; 14,13,12;,
			3; 12,16,15;,
			3; 14,17,13;,
			3; 12,15,14;;
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
				Material bone {
					0.900000;0.622900;0.227800;1.000000;;
					200.000000;
					0.461200;0.419300;0.267300;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame head {
		Mesh mesh-head {
			16;
			-0.096574;0.044074;0.115370;,
			-0.096574;0.000000;0.160741;,
			-0.096574;-0.045370;0.115370;,
			0.096574;-0.032407;0.147778;,
			0.096574;0.031111;0.147778;,
			0.096574;0.031111;0.082963;,
			-0.096574;-0.031111;0.147778;,
			0.096574;0.000000;0.162037;,
			-0.096574;-0.031111;0.084259;,
			0.096574;-0.045370;0.115370;,
			-0.096574;0.000000;0.070000;,
			0.096574;0.000000;0.070000;,
			-0.096574;0.031111;0.084259;,
			0.096574;0.045370;0.115370;,
			-0.096574;0.031111;0.147778;,
			0.096574;-0.032407;0.082963;;

			28;
			3; 2,1,0;,
			3; 5,4,3;,
			3; 3,6,2;,
			3; 7,6,3;,
			3; 9,2,8;,
			3; 11,8,10;,
			3; 10,12,5;,
			3; 13,12,0;,
			3; 4,0,14;,
			3; 4,14,1;,
			3; 14,0,1;,
			3; 10,8,12;,
			3; 7,3,4;,
			3; 15,11,9;,
			3; 0,12,8;,
			3; 2,6,1;,
			3; 0,8,2;,
			3; 3,9,11;,
			3; 5,13,4;,
			3; 3,11,5;,
			3; 2,9,3;,
			3; 7,1,6;,
			3; 8,15,9;,
			3; 11,15,8;,
			3; 5,11,10;,
			3; 13,5,12;,
			3; 4,13,0;,
			3; 1,7,4;;
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
				Material fldkdkgrey {
					0.012200;0.012200;0.012200;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
