xof 0302txt 0064
//  DV7208 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame stick {
		Mesh mesh-stick {
			8;
			0.005897;-0.177248;0.060956;,
			0.005897;0.537768;0.060956;,
			0.005897;0.537768;0.046304;,
			-0.008755;-0.177248;0.060956;,
			-0.008755;0.537768;0.060956;,
			-0.008755;0.537768;0.046304;,
			-0.008755;-0.177248;0.046304;,
			0.005897;-0.177248;0.046304;;

			10;
			3; 2,1,0;,
			3; 1,4,3;,
			3; 6,5,2;,
			3; 3,4,5;,
			3; 7,0,3;,
			3; 0,7,2;,
			3; 3,0,1;,
			3; 2,7,6;,
			3; 5,6,3;,
			3; 3,6,7;;
			MeshMaterialList {
				1;
			10;
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

	Frame head {
		Mesh mesh-head {
			14;
			0.005897;0.537768;0.060956;,
			0.013223;0.654983;0.068282;,
			0.013223;0.654983;0.038978;,
			-0.016081;0.654983;0.068282;,
			-0.016081;0.654983;0.038978;,
			-0.008755;0.537768;0.046304;,
			0.005897;0.537768;0.046304;,
			-0.008755;0.537768;0.060956;,
			-0.001429;0.750225;0.053630;,
			-0.001429;0.383923;-0.111204;,
			-0.001429;0.822752;-0.111204;,
			-0.001429;0.750225;-0.147101;,
			-0.001429;0.457183;-0.147101;,
			-0.001429;0.603702;-0.166149;;

			25;
			3; 2,1,0;,
			3; 0,1,3;,
			3; 6,5,4;,
			3; 7,3,4;,
			3; 8,1,2;,
			3; 8,3,1;,
			3; 2,4,8;,
			3; 4,3,8;,
			3; 6,5,9;,
			3; 4,2,10;,
			3; 10,2,11;,
			3; 12,6,9;,
			3; 9,5,12;,
			3; 11,4,10;,
			3; 11,2,13;,
			3; 13,2,6;,
			3; 13,6,12;,
			3; 12,5,13;,
			3; 13,5,4;,
			3; 13,4,11;,
			3; 11,4,10;,
			3; 0,6,2;,
			3; 3,7,0;,
			3; 4,2,6;,
			3; 4,5,7;;
			MeshMaterialList {
				1;
			25;
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
				Material slvrscuff1 {
					0.616300;0.616300;0.616300;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
