xof 0302txt 0064
//  DV7206 Copyright Viewpoint Datalabs Intl., Inc.
//  www.viewpoint.com, 800-643-8303, 801-229-3333
//  for Microsoft Corporation DirectX format only
//  see license agreement for description of rights
//  Model by Viewpoint Datalabs Intl., Inc.

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
	Frame head {
		Mesh mesh-head {
			7;
			0.003752;0.154696;0.004320;,
			0.025475;0.133399;0.000061;,
			0.003752;0.154696;-0.003773;,
			-0.004341;0.154696;0.004320;,
			-0.004341;0.154696;-0.003773;,
			-0.025637;0.133399;0.000061;,
			-0.000081;0.229235;0.000061;;

			8;
			3; 2,1,0;,
			3; 5,4,3;,
			3; 5,6,4;,
			3; 4,6,2;,
			3; 3,6,5;,
			3; 0,6,3;,
			3; 1,6,0;,
			3; 2,6,1;;
  MeshNormals {
    12;
  -0.700;-0.714;-0.000;,
  -0.262;0.070;0.962;,
  0.232;0.062;-0.971;,
  0.707;-0.707;0.000;,
  0.000;0.069;0.998;,
  -0.238;0.063;-0.969;,
  0.000;0.062;-0.998;,
  0.157;0.064;0.985;,
  0.256;0.068;0.964;,
  0.142;0.058;-0.988;,
  -0.162;0.066;0.985;,
  -0.147;0.059;-0.987;;

  8;
  3;0,0,0;,
  3;3,3,3;,
  3;5,6,11;,
  3;11,6,9;,
  3;10,4,1;,
  3;7,4,10;,
  3;8,4,7;,
  3;9,6,2;;

}

			MeshMaterialList {
				1;
			8;
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

	Frame shaft {
		Mesh mesh-shaft {
			8;
			0.003752;0.154696;-0.003773;,
			-0.004341;0.154696;-0.003773;,
			-0.004341;-0.355151;-0.003773;,
			-0.004341;0.154696;0.004320;,
			-0.004341;-0.355151;0.004320;,
			0.003752;0.154696;0.004320;,
			0.003752;-0.355151;0.004320;,
			0.003752;-0.355151;-0.003773;;

			8;
			3; 2,1,0;,
			3; 4,3,1;,
			3; 5,3,4;,
			3; 0,5,6;,
			3; 0,7,2;,
			3; 1,2,4;,
			3; 4,6,5;,
			3; 6,7,0;;
  MeshNormals {
    4;
  0.000;0.000;-1.000;,
  1.000;0.000;0.000;,
  0.000;0.000;1.000;,
  -1.000;0.000;0.000;;

  8;
  3;0,0,0;,
  3;3,3,3;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;2,2,2;,
  3;1,1,1;;

}

			MeshMaterialList {
				1;
			8;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0;;
				Material ltbrown {
					0.277600;0.114300;0.053100;1.000000;;
					60.000000;
					0.300000;0.123500;0.057400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame fletching {
		Mesh mesh-fletching {
			10;
			-0.000081;-0.312983;0.000061;,
			-0.000081;-0.355577;-0.021236;,
			-0.000081;-0.397319;0.000061;,
			-0.000081;-0.440765;-0.021236;,
			-0.000081;-0.354725;0.020932;,
			0.021216;-0.355577;0.000061;,
			0.021216;-0.440765;0.000061;,
			-0.021378;-0.355577;0.000061;,
			-0.000081;-0.440765;0.021358;,
			-0.021378;-0.440765;0.000061;;

			16;
			3; 2,1,0;,
			3; 2,1,3;,
			3; 2,0,4;,
			3; 4,0,2;,
			3; 2,5,0;,
			3; 2,5,6;,
			3; 2,0,7;,
			3; 7,0,2;,
			3; 2,3,1;,
			3; 2,0,1;,
			3; 4,8,2;,
			3; 2,8,4;,
			3; 2,6,5;,
			3; 2,0,5;,
			3; 7,9,2;,
			3; 2,9,7;;
  MeshNormals {
    4;
  1.000;0.000;0.000;,
  0.000;0.000;-1.000;,
  -1.000;0.000;0.000;,
  0.000;0.000;1.000;;

  16;
  3;0,0,0;,
  3;2,2,2;,
  3;0,0,0;,
  3;2,2,2;,
  3;3,3,3;,
  3;1,1,1;,
  3;3,3,3;,
  3;1,1,1;,
  3;0,0,0;,
  3;2,2,2;,
  3;0,0,0;,
  3;2,2,2;,
  3;3,3,3;,
  3;1,1,1;,
  3;3,3,3;,
  3;1,1,1;;

}

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
				Material red {
					0.771400;0.000000;0.000000;1.000000;;
					136.430000;
					0.885700;0.000000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

