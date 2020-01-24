xof 0302txt 0064
//  DV7209 Copyright Viewpoint Datalabs Intl., Inc.
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
			-0.012798;-0.266767;0.010139;,
			-0.012798;0.360482;0.010139;,
			0.012909;-0.266767;0.010139;,
			-0.012798;-0.266767;-0.015568;,
			-0.012798;0.360482;-0.015568;,
			0.012909;0.360482;0.010139;,
			0.012909;0.360482;-0.015568;,
			0.012909;-0.266767;-0.015568;;

			10;
			3; 2,1,0;,
			3; 0,4,3;,
			3; 2,6,5;,
			3; 7,4,6;,
			3; 2,0,3;,
			3; 2,5,1;,
			3; 0,1,4;,
			3; 2,7,6;,
			3; 7,3,4;,
			3; 3,7,2;;
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
			22;
			-0.025651;0.463310;0.022993;,
			-0.095060;0.668965;-0.002714;,
			-0.025651;0.463310;-0.028421;,
			-0.012798;0.360482;0.010139;,
			0.012909;0.360482;0.010139;,
			-0.012798;0.360482;-0.015568;,
			0.025763;0.463310;-0.028421;,
			0.012909;0.360482;-0.015568;,
			0.025763;0.463310;0.022993;,
			0.000056;0.733233;-0.002714;,
			-0.096345;0.154826;-0.002714;,
			0.096457;0.668965;-0.002714;,
			-0.160613;0.604698;-0.002714;,
			-0.160613;0.219094;-0.002714;,
			0.160724;0.604698;-0.002714;,
			0.096457;0.154826;-0.002714;,
			0.160724;0.219094;-0.002714;,
			-0.192747;0.411896;-0.002714;,
			0.192857;0.411896;-0.002714;,
			0.096457;0.154826;-0.002714;,
			0.012909;0.360482;-0.015568;,
			0.012909;0.360482;0.010139;;

			37;
			3; 2,1,0;,
			3; 4,0,3;,
			3; 5,0,2;,
			3; 8,7,6;,
			3; 7,2,6;,
			3; 9,0,8;,
			3; 9,2,0;,
			3; 8,6,9;,
			3; 6,2,9;,
			3; 10,5,3;,
			3; 6,8,11;,
			3; 0,1,12;,
			3; 3,13,10;,
			3; 11,8,14;,
			3; 16,4,15;,
			3; 15,7,16;,
			3; 13,5,10;,
			3; 14,6,11;,
			3; 1,2,12;,
			3; 13,3,17;,
			3; 12,17,0;,
			3; 0,17,3;,
			3; 12,2,17;,
			3; 17,5,13;,
			3; 2,5,17;,
			3; 14,8,18;,
			3; 18,8,4;,
			3; 18,4,16;,
			3; 16,7,18;,
			3; 18,7,6;,
			3; 18,6,14;,
			3; 14,6,11;,
			3; 4,8,0;,
			3; 5,3,0;,
			3; 8,4,7;,
			3; 7,5,2;,
			3; 21,20,19;;
			MeshMaterialList {
				1;
			37;
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

