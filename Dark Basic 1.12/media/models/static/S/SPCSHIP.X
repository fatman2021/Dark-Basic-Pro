xof 0302txt 0064
//  DV7446 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame space_ship {
		Mesh mesh-space_ship {
			16;
			-1.676400;-4.216400;-4.216400;,
			1.676400;-4.216400;-4.216400;,
			1.676400;-4.216400;4.216400;,
			-1.676400;12.700000;0.000000;,
			-1.676400;-4.216400;4.216400;,
			1.676400;12.700000;0.000000;,
			-8.458200;-0.838200;0.000000;,
			8.458200;-0.838200;0.000000;,
			-8.458200;-5.918200;0.000000;,
			8.458200;-5.918200;0.000000;,
			0.000000;-8.458200;3.378200;,
			-3.378200;-12.700000;0.838200;,
			3.378200;-12.700000;0.838200;,
			0.000000;-8.458200;-3.378200;,
			-3.378200;-12.700000;-0.838200;,
			3.378200;-12.700000;-0.838200;;

			28;
			3; 2,1,0;,
			3; 4,0,3;,
			3; 2,5,1;,
			3; 4,3,6;,
			3; 2,7,5;,
			3; 4,6,8;,
			3; 7,2,9;,
			3; 4,8,10;,
			3; 2,10,9;,
			3; 2,4,10;,
			3; 10,8,11;,
			3; 10,12,9;,
			3; 10,11,12;,
			3; 3,0,6;,
			3; 7,1,5;,
			3; 8,6,0;,
			3; 1,7,9;,
			3; 13,8,0;,
			3; 13,1,9;,
			3; 14,8,13;,
			3; 15,13,9;,
			3; 13,0,1;,
			3; 13,15,14;,
			3; 8,14,11;,
			3; 9,12,15;,
			3; 11,14,15;,
			3; 0,4,2;,
			3; 15,12,11;;
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
				Material silver {
					0.616300;0.616300;0.616300;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
