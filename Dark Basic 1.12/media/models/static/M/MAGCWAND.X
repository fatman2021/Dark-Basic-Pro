xof 0302txt 0064
//  DV7493 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame wand {
		Mesh mesh-wand {
			8;
			0.007172;-0.350000;0.000000;,
			0.000000;-0.350000;0.007172;,
			0.017930;0.210861;0.000000;,
			-0.007172;-0.350000;0.000000;,
			0.000000;0.210861;0.017930;,
			-0.017930;0.210861;0.000000;,
			0.000000;0.210861;-0.017930;,
			0.000000;-0.350000;-0.007172;;

			10;
			3; 2,1,0;,
			3; 4,3,1;,
			3; 6,3,5;,
			3; 2,7,6;,
			3; 3,7,0;,
			3; 2,4,1;,
			3; 4,5,3;,
			3; 6,7,3;,
			3; 2,0,7;,
			3; 0,1,3;;
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
				Material blue_pure {
					0.000000;0.000000;1.000000;1.000000;;
					65.890000;
					0.000000;0.000000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame wand_top {
		Mesh mesh-wand_top {
			25;
			0.000000;0.350000;0.000000;,
			-0.053791;0.268238;0.000000;,
			0.000000;0.268238;-0.053791;,
			0.000000;0.268238;0.053791;,
			0.053791;0.268238;0.000000;,
			0.050205;0.268238;-0.050205;,
			0.035861;0.268238;-0.017930;,
			0.010758;0.317008;-0.010758;,
			0.017930;0.268238;-0.035861;,
			-0.017930;0.268238;-0.035861;,
			-0.010758;0.317008;-0.010758;,
			-0.050205;0.268238;-0.050205;,
			-0.035861;0.268238;-0.017930;,
			-0.035861;0.268238;0.017930;,
			-0.010758;0.317008;0.010758;,
			-0.050205;0.268238;0.050205;,
			-0.017930;0.268238;0.035861;,
			0.035861;0.268238;0.017930;,
			0.050205;0.268238;0.050205;,
			0.010758;0.317008;0.010758;,
			0.017930;0.268238;0.035861;,
			-0.017930;0.210861;0.000000;,
			0.000000;0.210861;-0.017930;,
			0.017930;0.210861;0.000000;,
			0.000000;0.210861;0.017930;;

			32;
			3; 2,1,0;,
			3; 0,1,3;,
			3; 4,0,3;,
			3; 4,2,0;,
			3; 7,6,5;,
			3; 7,5,8;,
			3; 11,10,9;,
			3; 12,10,11;,
			3; 15,14,13;,
			3; 15,16,14;,
			3; 19,18,17;,
			3; 20,18,19;,
			3; 22,21,11;,
			3; 23,22,5;,
			3; 15,21,24;,
			3; 23,18,24;,
			3; 12,11,21;,
			3; 22,11,9;,
			3; 21,15,13;,
			3; 16,15,24;,
			3; 18,20,24;,
			3; 23,17,18;,
			3; 5,6,23;,
			3; 22,8,5;,
			3; 22,4,23;,
			3; 21,2,22;,
			3; 1,24,3;,
			3; 24,4,3;,
			3; 22,2,4;,
			3; 21,1,2;,
			3; 1,21,24;,
			3; 24,23,4;;
			MeshMaterialList {
				1;
			32;
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
				Material brass {
					0.477600;0.195900;0.000000;1.000000;;
					134.880000;
					0.579600;0.579600;0.579600;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
