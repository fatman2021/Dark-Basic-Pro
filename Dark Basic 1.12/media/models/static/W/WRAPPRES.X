xof 0302txt 0064
//  DV7415 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame box {
		Mesh mesh-box {
			8;
			-5.080000;-1.270000;-3.175000;,
			-5.080000;-1.270000;3.175000;,
			5.080000;-1.270000;-3.175000;,
			5.080000;0.000000;3.175000;,
			-5.080000;0.000000;3.175000;,
			5.080000;0.000000;-3.175000;,
			5.080000;-1.270000;3.175000;,
			-5.080000;0.000000;-3.175000;;

			12;
			3; 2,1,0;,
			3; 5,4,3;,
			3; 3,4,1;,
			3; 5,3,6;,
			3; 0,7,5;,
			3; 4,7,0;,
			3; 2,6,1;,
			3; 5,7,4;,
			3; 1,6,3;,
			3; 6,2,5;,
			3; 5,2,0;,
			3; 0,1,4;;
			MeshMaterialList {
				1;
			12;
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
				Material pink {
					0.987800;0.169500;0.670200;1.000000;;
					106.200000;
					0.742900;0.297200;0.297200;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame ribbon {
		Mesh mesh-ribbon {
			16;
			-2.540000;-1.270000;3.175000;,
			-2.540000;0.000000;3.175000;,
			-1.270000;0.000000;3.175000;,
			-1.270000;0.000000;-3.175000;,
			-2.540000;0.000000;-3.175000;,
			-2.540000;-1.270000;-3.175000;,
			-1.270000;-1.270000;-3.175000;,
			-5.080000;0.000000;-0.635000;,
			-5.080000;0.000000;0.635000;,
			-5.080000;-1.270000;0.635000;,
			-5.080000;-1.270000;-0.635000;,
			5.080000;-1.270000;0.635000;,
			5.080000;0.000000;0.635000;,
			5.080000;0.000000;-0.635000;,
			-1.270000;-1.270000;3.175000;,
			5.080000;-1.270000;-0.635000;;

			16;
			3; 2,1,0;,
			3; 5,4,3;,
			3; 3,4,1;,
			3; 0,5,6;,
			3; 9,8,7;,
			3; 11,9,10;,
			3; 13,12,11;,
			3; 7,8,12;,
			3; 0,14,2;,
			3; 3,6,5;,
			3; 1,2,3;,
			3; 6,14,0;,
			3; 7,10,9;,
			3; 10,15,11;,
			3; 11,15,13;,
			3; 12,13,7;;
			MeshMaterialList {
				1;
			16;
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
				Material yellow {
					1.000000;0.666700;0.000000;1.000000;;
					65.890000;
					1.000000;0.666700;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame bow {
		Mesh mesh-bow {
			12;
			-1.270000;0.508000;-1.905000;,
			-1.295400;-0.076200;0.000000;,
			-2.540000;0.000000;0.000000;,
			-1.270000;1.270000;-1.270000;,
			-2.540000;0.508000;-1.905000;,
			-2.540000;1.270000;-1.270000;,
			-1.270000;0.508000;1.905000;,
			-1.295400;0.000000;0.000000;,
			-2.540000;0.508000;1.905000;,
			-2.540000;0.000000;0.000000;,
			-1.295400;1.270000;1.270000;,
			-2.540000;1.270000;1.270000;;

			24;
			3; 2,1,0;,
			3; 0,1,2;,
			3; 4,0,3;,
			3; 3,0,4;,
			3; 2,3,1;,
			3; 2,3,5;,
			3; 8,7,6;,
			3; 8,7,9;,
			3; 8,6,10;,
			3; 10,6,8;,
			3; 9,10,7;,
			3; 9,10,11;,
			3; 0,4,2;,
			3; 2,4,0;,
			3; 3,5,4;,
			3; 4,5,3;,
			3; 2,5,3;,
			3; 2,1,3;,
			3; 8,9,7;,
			3; 8,6,7;,
			3; 10,11,8;,
			3; 8,11,10;,
			3; 9,11,10;,
			3; 9,7,10;;
			MeshMaterialList {
				1;
			24;
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
				Material yellowbrt {
					1.000000;0.783700;0.000000;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
