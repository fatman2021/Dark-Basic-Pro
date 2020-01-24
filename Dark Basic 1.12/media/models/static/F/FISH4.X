xof 0302txt 0064
//  DV7303 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame eyes {
		Mesh mesh-eyes {
			8;
			-0.005600;0.014000;0.029000;,
			-0.004100;0.020000;0.029000;,
			-0.005000;0.014000;0.033000;,
			0.004100;0.020000;0.029000;,
			0.005600;0.014000;0.029000;,
			0.005000;0.014000;0.033000;,
			-0.003500;0.020000;0.033000;,
			0.003500;0.020000;0.033000;;

			4;
			3; 2,1,0;,
			3; 5,4,3;,
			3; 2,6,1;,
			3; 3,7,5;;
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

	Frame fish {
		Mesh mesh-fish {
			11;
			-0.010000;0.000000;0.023000;,
			0.000000;-0.040000;0.023000;,
			0.000000;-0.010000;-0.037000;,
			0.010000;0.000000;0.023000;,
			0.000000;0.040000;0.023000;,
			0.000000;0.010000;-0.037000;,
			-0.004000;0.000000;0.063000;,
			0.004000;0.000000;0.063000;,
			0.000000;0.042000;-0.063000;,
			0.000000;0.000000;-0.051000;,
			0.000000;-0.042000;-0.063000;;

			19;
			3; 2,1,0;,
			3; 3,1,2;,
			3; 5,4,3;,
			3; 0,4,5;,
			3; 2,0,5;,
			3; 5,3,2;,
			3; 7,6,1;,
			3; 3,7,4;,
			3; 7,1,3;,
			3; 6,0,1;,
			3; 7,4,6;,
			3; 7,3,4;,
			3; 9,5,8;,
			3; 5,9,2;,
			3; 2,9,10;,
			3; 5,9,8;,
			3; 2,9,5;,
			3; 10,9,2;,
			3; 6,4,0;;
			MeshMaterialList {
				1;
			19;
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
				Material orange {
					1.000000;0.166700;0.000000;1.000000;;
					65.890000;
					1.000000;0.166700;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
