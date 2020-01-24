xof 0302txt 0064
//  DV7301 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame horz_pole {
		Mesh mesh-horz_pole {
			8;
			-3.414773;0.227273;0.113636;,
			3.401136;0.227273;0.113636;,
			3.401136;0.000000;0.113636;,
			3.401136;0.227273;-0.113636;,
			-3.414773;0.000000;0.113636;,
			3.401136;0.000000;-0.113636;,
			-3.414773;0.227273;-0.113636;,
			-3.414773;0.000000;-0.113636;;

			8;
			3; 2,1,0;,
			3; 0,1,3;,
			3; 5,2,4;,
			3; 6,3,5;,
			3; 0,4,2;,
			3; 3,6,0;,
			3; 4,7,5;,
			3; 5,7,6;;
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
				Material archwhite {
					0.995900;0.995900;0.995900;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame up_rights {
		Mesh mesh-up_rights {
			24;
			3.630682;5.000000;0.113636;,
			3.630682;-5.000000;0.113636;,
			3.401136;0.000000;0.113636;,
			3.401136;-5.000000;0.113636;,
			3.630682;-5.000000;-0.113636;,
			3.630682;5.000000;-0.113636;,
			3.401136;5.000000;0.113636;,
			3.401136;0.227273;0.113636;,
			3.401136;0.000000;-0.113636;,
			3.401136;0.227273;-0.113636;,
			-3.414773;0.000000;-0.113636;,
			-3.414773;0.000000;0.113636;,
			-3.414773;0.227273;0.113636;,
			-3.414773;5.000000;-0.113636;,
			-3.414773;5.000000;0.113636;,
			-3.630682;5.000000;0.113636;,
			-3.630682;-5.000000;0.113636;,
			-3.414773;-5.000000;0.113636;,
			-3.414773;-5.000000;-0.113636;,
			-3.630682;-5.000000;-0.113636;,
			-3.414773;0.227273;-0.113636;,
			-3.630682;5.000000;-0.113636;,
			3.401136;-5.000000;-0.113636;,
			3.401136;5.000000;-0.113636;;

			42;
			3; 2,1,0;,
			3; 4,1,3;,
			3; 6,0,5;,
			3; 9,8,7;,
			3; 5,1,4;,
			3; 12,11,10;,
			3; 6,0,5;,
			3; 15,14,13;,
			3; 18,17,16;,
			3; 20,10,19;,
			3; 21,16,15;,
			3; 18,10,17;,
			3; 13,14,20;,
			3; 0,6,7;,
			3; 2,3,1;,
			3; 0,7,2;,
			3; 3,22,4;,
			3; 5,23,6;,
			3; 22,3,2;,
			3; 7,6,23;,
			3; 8,22,2;,
			3; 7,23,9;,
			3; 8,2,7;,
			3; 5,0,1;,
			3; 10,20,14;,
			3; 11,17,10;,
			3; 10,14,12;,
			3; 5,23,6;,
			3; 13,21,15;,
			3; 16,19,18;,
			3; 19,21,13;,
			3; 10,18,19;,
			3; 19,13,20;,
			3; 21,19,16;,
			3; 16,17,15;,
			3; 17,11,15;,
			3; 11,12,15;,
			3; 12,14,15;,
			3; 22,5,4;,
			3; 22,8,5;,
			3; 8,9,5;,
			3; 9,23,5;;
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
