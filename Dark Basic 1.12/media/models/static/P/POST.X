xof 0302txt 0064
//  DV7413 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame post {
		Mesh mesh-post {
			12;
			0.092300;0.364001;-0.091650;,
			0.045500;0.401701;-0.043550;,
			-0.044200;0.401701;-0.044850;,
			-0.092300;0.364001;-0.092950;,
			-0.044200;0.401701;0.044850;,
			-0.092300;0.364001;0.092950;,
			0.092300;0.364001;0.092950;,
			0.044200;0.401701;0.044850;,
			0.092300;-0.650000;-0.090350;,
			-0.091000;-0.650000;-0.091650;,
			-0.091000;-0.650000;0.091650;,
			0.091000;-0.650000;0.091650;;

			18;
			3; 2,1,0;,
			3; 4,2,3;,
			3; 6,4,5;,
			3; 1,7,6;,
			3; 9,0,8;,
			3; 10,3,9;,
			3; 6,5,10;,
			3; 8,6,11;,
			3; 0,3,2;,
			3; 3,5,4;,
			3; 6,7,4;,
			3; 6,0,1;,
			3; 9,3,0;,
			3; 10,5,3;,
			3; 10,11,6;,
			3; 8,0,6;,
			3; 8,10,9;,
			3; 8,11,10;;
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
				Material bone1 {
					0.983700;0.795900;0.469400;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame head {
		Mesh mesh-head {
			17;
			0.092300;0.557701;-0.091650;,
			0.000000;0.650000;0.000650;,
			-0.092300;0.557701;-0.092950;,
			-0.092300;0.557701;0.092950;,
			0.092300;0.557701;0.092950;,
			0.092300;0.507001;-0.091650;,
			-0.092300;0.507001;-0.092950;,
			-0.092300;0.507001;0.092950;,
			0.092300;0.507001;0.092950;,
			0.045500;0.466701;-0.043550;,
			-0.044200;0.466701;-0.044850;,
			-0.044200;0.466701;0.044850;,
			0.044200;0.466701;0.044850;,
			0.045500;0.401701;-0.043550;,
			-0.044200;0.401701;-0.044850;,
			-0.044200;0.401701;0.044850;,
			0.044200;0.401701;0.044850;;

			28;
			3; 2,1,0;,
			3; 3,1,2;,
			3; 4,1,3;,
			3; 0,1,4;,
			3; 6,0,5;,
			3; 7,2,6;,
			3; 4,3,7;,
			3; 0,4,8;,
			3; 10,5,9;,
			3; 11,6,10;,
			3; 8,7,11;,
			3; 9,8,12;,
			3; 10,9,13;,
			3; 15,10,14;,
			3; 16,11,15;,
			3; 9,12,16;,
			3; 6,2,0;,
			3; 7,3,2;,
			3; 7,8,4;,
			3; 8,5,0;,
			3; 10,6,5;,
			3; 11,7,6;,
			3; 11,12,8;,
			3; 9,5,8;,
			3; 13,14,10;,
			3; 15,11,10;,
			3; 16,12,11;,
			3; 16,13,9;;
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

