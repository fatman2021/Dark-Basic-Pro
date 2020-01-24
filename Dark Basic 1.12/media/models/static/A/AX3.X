xof 0302txt 0064
//  DV7210 Copyright Viewpoint Datalabs Intl., Inc.
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
			9;
			0.006427;-0.500000;0.041774;,
			0.006427;0.127249;0.041774;,
			0.006427;0.127249;0.028920;,
			-0.006427;-0.500000;0.041774;,
			-0.006427;0.127249;0.041774;,
			-0.006427;0.127249;0.028920;,
			-0.006427;-0.500000;0.028920;,
			0.006427;-0.500000;0.028920;,
			0.000000;-0.143316;0.019923;;

			11;
			3; 2,1,0;,
			3; 1,4,3;,
			3; 6,5,2;,
			3; 3,4,5;,
			3; 7,0,3;,
			3; 2,5,8;,
			3; 0,7,2;,
			3; 3,0,1;,
			3; 2,7,6;,
			3; 5,6,3;,
			3; 3,6,7;;
			MeshMaterialList {
				1;
			11;
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
			0.006427;0.127249;0.041774;,
			0.012854;0.230077;0.048200;,
			0.012854;0.230077;0.022494;,
			-0.012854;0.230077;0.048200;,
			-0.012854;0.230077;0.022494;,
			-0.006427;0.127249;0.028920;,
			0.006427;0.127249;0.028920;,
			-0.006427;0.127249;0.041774;,
			0.000000;0.500000;0.035347;,
			0.000000;0.498715;0.019923;,
			0.000000;0.370180;-0.028278;,
			0.000000;-0.143316;0.019923;,
			0.000000;-0.014782;-0.028278;,
			0.000000;0.178020;-0.048200;;

			24;
			3; 2,1,0;,
			3; 0,1,3;,
			3; 6,5,4;,
			3; 7,3,4;,
			3; 8,1,2;,
			3; 8,3,1;,
			3; 2,4,8;,
			3; 4,3,8;,
			3; 4,2,9;,
			3; 9,2,10;,
			3; 12,6,11;,
			3; 11,5,12;,
			3; 10,4,9;,
			3; 10,2,13;,
			3; 13,2,6;,
			3; 13,6,12;,
			3; 12,5,13;,
			3; 13,5,4;,
			3; 13,4,10;,
			3; 10,4,9;,
			3; 0,6,2;,
			3; 3,7,0;,
			3; 4,2,6;,
			3; 4,5,7;;
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

