xof 0302txt 0064
//  DV7497 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame yield {
		Mesh mesh-yield {
			6;
			0.000000;0.144516;0.000000;,
			-0.154839;-0.096774;0.000000;,
			-0.120645;-0.077419;0.000000;,
			0.000000;0.183871;0.000000;,
			0.120645;-0.077419;0.000000;,
			0.154839;-0.096774;0.000000;;

			7;
			3; 2,1,0;,
			3; 0,1,3;,
			3; 4,1,2;,
			3; 5,1,4;,
			3; 5,0,3;,
			3; 4,0,5;,
			3; 2,0,4;;
			MeshMaterialList {
				1;
			7;
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

	Frame trim {
		Mesh mesh-trim {
			9;
			-0.154839;-0.096774;0.000000;,
			-0.164516;-0.091613;0.000000;,
			-0.154839;-0.106452;0.000000;,
			0.154839;-0.096774;0.000000;,
			0.154839;-0.106452;0.000000;,
			0.164516;-0.091613;0.000000;,
			0.000000;0.183871;0.000000;,
			0.009677;0.193548;0.000000;,
			-0.009677;0.193548;0.000000;;

			9;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 5,4,3;,
			3; 5,3,6;,
			3; 6,8,7;,
			3; 1,8,6;,
			3; 3,4,2;,
			3; 6,7,5;,
			3; 6,0,1;;
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
				Material black {
					0.002000;0.002000;0.002000;1.000000;;
					157.360000;
					0.518400;0.518400;0.518400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame back {
		Mesh mesh-back {
			12;
			-0.154839;-0.106452;0.000000;,
			-0.164516;-0.091613;0.000000;,
			-0.154839;-0.096774;0.000000;,
			0.154839;-0.096774;0.000000;,
			0.164516;-0.091613;0.000000;,
			0.154839;-0.106452;0.000000;,
			0.000000;0.183871;0.000000;,
			-0.009677;0.193548;0.000000;,
			0.009677;0.193548;0.000000;,
			-0.120645;-0.077419;0.000000;,
			0.000000;0.144516;0.000000;,
			0.120645;-0.077419;0.000000;;

			16;
			3; 2,1,0;,
			3; 3,2,0;,
			3; 3,5,4;,
			3; 6,3,4;,
			3; 8,7,6;,
			3; 6,7,1;,
			3; 10,2,9;,
			3; 6,2,10;,
			3; 9,2,11;,
			3; 11,2,3;,
			3; 6,10,3;,
			3; 3,10,11;,
			3; 11,10,9;,
			3; 0,5,3;,
			3; 4,8,6;,
			3; 1,2,6;;
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
				Material black {
					0.002000;0.002000;0.002000;1.000000;;
					157.360000;
					0.518400;0.518400;0.518400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
