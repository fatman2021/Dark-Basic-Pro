xof 0302txt 0064
//  DV7403 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame picture {
		Mesh mesh-picture {
			8;
			15.240000;10.172700;0.609600;,
			-15.240000;10.172700;0.609603;,
			-15.240000;-10.147300;0.609600;,
			15.240000;-10.147300;0.609597;,
			16.256001;-11.163300;0.609597;,
			-16.256001;-11.163300;0.609600;,
			-16.256001;11.188700;0.609603;,
			16.256001;11.188700;0.609600;;

			12;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 4,3,2;,
			3; 4,2,5;,
			3; 2,1,6;,
			3; 2,6,5;,
			3; 3,1,2;,
			3; 1,7,6;,
			3; 1,0,7;,
			3; 0,4,7;,
			3; 4,0,3;,
			3; 3,0,1;;
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
				Material white {
					1.000000;1.000000;1.000000;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame frame {
		Mesh mesh-frame {
			12;
			15.240000;-10.147300;0.609597;,
			17.780001;-12.763500;-0.609603;,
			17.780001;12.763500;-0.609600;,
			-17.780001;-12.763500;-0.609600;,
			-15.240000;-10.147300;0.609600;,
			-17.780001;12.763500;-0.609597;,
			-15.240000;10.172700;0.609603;,
			16.256001;11.188700;0.609600;,
			16.256001;-11.163300;0.609597;,
			-16.256001;-11.163300;0.609600;,
			-16.256001;11.188700;0.609603;,
			15.240000;10.172700;0.609600;;

			16;
			3; 2,1,0;,
			3; 0,1,3;,
			3; 5,4,3;,
			3; 2,6,5;,
			3; 5,7,2;,
			3; 2,7,8;,
			3; 1,8,9;,
			3; 5,9,10;,
			3; 0,11,2;,
			3; 3,4,0;,
			3; 5,6,4;,
			3; 2,11,6;,
			3; 5,10,7;,
			3; 8,1,2;,
			3; 9,3,1;,
			3; 5,3,9;;
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
				Material lighttan2 {
					0.314300;0.187000;0.096200;1.000000;;
					177.520000;
					0.828600;0.805700;0.585100;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
