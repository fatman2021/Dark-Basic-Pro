xof 0302txt 0064
//  DV2808 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame glass {
		Mesh mesh-glass {
			12;
			-0.635593;2.224575;-1.100879;,
			-0.750000;3.000000;-1.299038;,
			-1.500000;3.000000;0.000000;,
			-1.271186;2.224575;0.000000;,
			0.635593;2.224575;-1.100879;,
			0.750000;3.000000;-1.299038;,
			1.271186;2.224575;0.000000;,
			1.500000;3.000000;0.000000;,
			0.635593;2.224575;1.100879;,
			0.750000;3.000000;1.299038;,
			-0.635593;2.224575;1.100879;,
			-0.750000;3.000000;1.299038;;

			6;
			4; 3,2,1,0;,
			4; 0,1,5,4;,
			4; 4,5,7,6;,
			4; 6,7,9,8;,
			4; 8,9,11,10;,
			4; 10,11,2,3;;
			MeshMaterialList {
				1;
			6;
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

	Frame tower {
		Mesh mesh-tower {
			12;
			-1.271186;-2.542375;0.000000;,
			-1.271186;2.224575;0.000000;,
			-0.635593;2.224575;1.100879;,
			-0.635593;-2.542375;1.100879;,
			0.635593;2.224575;1.100879;,
			0.635593;-2.542375;1.100879;,
			1.271186;2.224575;0.000000;,
			1.271186;-2.542375;0.000000;,
			0.635593;2.224575;-1.100879;,
			0.635593;-2.542375;-1.100879;,
			-0.635593;2.224575;-1.100879;,
			-0.635593;-2.542375;-1.100879;;

			7;
			4; 3,2,1,0;,
			4; 5,4,2,3;,
			4; 7,6,4,5;,
			4; 9,8,6,7;,
			4; 11,10,8,9;,
			4; 0,1,10,11;,
			6; 0,11,9,7,5,3;;
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
				Material bone1 {
					0.983700;0.795900;0.469400;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame roof {
		Mesh mesh-roof {
			13;
			-1.500000;3.000000;0.000000;,
			-1.271186;3.127119;0.000000;,
			-0.635593;3.127119;1.100879;,
			-0.750000;3.000000;1.299038;,
			0.635593;3.127119;1.100879;,
			0.750000;3.000000;1.299038;,
			1.271186;3.127119;0.000000;,
			1.500000;3.000000;0.000000;,
			0.635593;3.127119;-1.100879;,
			0.750000;3.000000;-1.299038;,
			-0.635593;3.127119;-1.100879;,
			-0.750000;3.000000;-1.299038;,
			0.000000;3.139831;0.000000;;

			12;
			4; 3,2,1,0;,
			4; 5,4,2,3;,
			4; 7,6,4,5;,
			4; 9,8,6,7;,
			4; 11,10,8,9;,
			4; 0,1,10,11;,
			3; 1,12,10;,
			3; 10,12,8;,
			3; 8,12,6;,
			3; 6,12,4;,
			3; 4,12,2;,
			3; 2,12,1;;
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
