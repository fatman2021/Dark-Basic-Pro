xof 0302txt 0064
//  DV7219 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame bench {
		Mesh mesh-bench {
			8;
			-0.750000;-0.099127;-0.146150;,
			-0.729500;0.100373;-0.127150;,
			-0.729500;0.100373;0.134350;,
			-0.750000;-0.099127;0.153850;,
			0.750000;-0.099127;0.153850;,
			0.729500;0.100373;0.134350;,
			0.729500;0.100373;-0.127150;,
			0.750000;-0.099127;-0.146150;;

			9;
			3; 2,1,0;,
			3; 4,2,3;,
			3; 7,6,5;,
			3; 0,1,6;,
			3; 0,3,2;,
			3; 4,5,2;,
			3; 5,4,7;,
			3; 6,7,0;,
			4; 7,4,3,0;;
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

	Frame seat {
		Mesh mesh-seat {
			12;
			-0.729500;0.100373;0.134350;,
			-0.729500;0.100373;-0.127150;,
			-0.750000;0.150873;-0.146150;,
			-0.750000;0.150873;0.153850;,
			-0.740000;0.179873;-0.127150;,
			0.750000;0.150873;-0.146150;,
			0.729500;0.100373;-0.127150;,
			0.729500;0.100373;0.134350;,
			0.740000;0.179873;-0.127150;,
			0.750000;0.150873;0.153850;,
			-0.740000;0.179873;0.144350;,
			0.740000;0.179873;0.144350;;

			18;
			3; 2,1,0;,
			3; 4,2,3;,
			3; 7,6,5;,
			3; 9,5,8;,
			3; 5,6,1;,
			3; 4,5,2;,
			3; 0,7,9;,
			3; 9,10,3;,
			3; 11,4,10;,
			3; 0,3,2;,
			3; 3,10,4;,
			3; 5,9,7;,
			3; 8,11,9;,
			3; 1,2,5;,
			3; 4,8,5;,
			3; 9,3,0;,
			3; 9,11,10;,
			3; 11,8,4;;
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
