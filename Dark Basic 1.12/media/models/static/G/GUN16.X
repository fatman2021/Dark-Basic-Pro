xof 0302txt 0064
//  DV7341 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame lazer {
		Mesh mesh-lazer {
			32;
			-0.051645;-0.103540;-0.070708;,
			-0.049640;0.296460;-0.069706;,
			0.051614;-0.103540;-0.070708;,
			0.049608;0.296460;-0.069706;,
			0.099734;0.296460;-0.230107;,
			-0.100266;-0.103540;-0.230107;,
			-0.099765;0.296460;-0.230107;,
			-0.049640;0.296460;-0.390508;,
			-0.051645;-0.103540;-0.387500;,
			0.049608;0.296460;-0.390508;,
			0.051614;-0.103540;-0.387500;,
			0.020536;-0.855419;-0.290758;,
			0.020034;-0.303540;-0.308302;,
			-0.020567;-0.855419;-0.290758;,
			0.040085;-0.855419;-0.230107;,
			0.040085;-0.304042;-0.230107;,
			-0.020066;-0.303540;-0.308302;,
			-0.040116;-0.304042;-0.230107;,
			-0.020066;-0.304042;-0.149906;,
			-0.020567;-0.855419;-0.153415;,
			0.020034;-0.304042;-0.149906;,
			0.020536;-0.855419;-0.153415;,
			0.099734;-0.103540;-0.229104;,
			-0.019063;-0.123590;-1.920832;,
			-0.020066;-0.123590;-0.390508;,
			0.019032;-0.123590;-1.920832;,
			-0.019063;-0.083490;-1.920832;,
			-0.020066;-0.083490;-0.390508;,
			0.020034;-0.123590;-0.390508;,
			0.020034;-0.083490;-0.390508;,
			0.019032;-0.083490;-1.920832;,
			-0.040116;-0.855419;-0.230107;;

			54;
			3; 2,1,0;,
			3; 4,3,2;,
			3; 0,6,5;,
			3; 8,6,7;,
			3; 8,7,9;,
			3; 10,9,4;,
			3; 13,12,11;,
			3; 11,15,14;,
			3; 17,16,13;,
			3; 19,18,17;,
			3; 21,15,20;,
			3; 19,20,18;,
			3; 20,2,0;,
			3; 16,10,12;,
			3; 12,22,15;,
			3; 20,22,2;,
			3; 5,8,16;,
			3; 18,0,5;,
			3; 1,4,9;,
			3; 13,14,21;,
			3; 25,24,23;,
			3; 24,27,26;,
			3; 30,29,28;,
			3; 30,27,29;,
			3; 30,23,26;,
			3; 2,3,1;,
			3; 2,22,4;,
			3; 0,1,6;,
			3; 8,5,6;,
			3; 9,10,8;,
			3; 4,22,10;,
			3; 13,16,12;,
			3; 11,12,15;,
			3; 13,31,17;,
			3; 17,31,19;,
			3; 21,14,15;,
			3; 19,21,20;,
			3; 0,18,20;,
			3; 16,8,10;,
			3; 12,10,22;,
			3; 20,15,22;,
			3; 16,17,5;,
			3; 5,17,18;,
			3; 9,7,6;,
			3; 1,3,4;,
			3; 9,6,1;,
			3; 21,19,31;,
			3; 13,11,14;,
			3; 21,31,13;,
			3; 25,28,24;,
			3; 26,23,24;,
			3; 28,25,30;,
			3; 30,26,27;,
			3; 30,25,23;;
			MeshMaterialList {
				1;
			54;
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
				Material dkred {
					0.228600;0.000000;0.000000;1.000000;;
					60.000000;
					0.249000;0.000000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
