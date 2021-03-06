xof 0302txt 0064
//  DV7266 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame cue_stick {
		Mesh mesh-cue_stick {
			12;
			-0.009516;-0.000328;0.170623;,
			-0.002953;-0.000328;-0.511875;,
			-0.004266;0.008203;0.170623;,
			-0.000984;0.002297;-0.511875;,
			0.000984;0.002297;-0.511875;,
			0.004266;0.008203;0.170623;,
			0.002953;-0.000328;-0.511875;,
			0.009516;-0.000328;0.170623;,
			0.004266;-0.008203;0.170623;,
			0.000984;-0.002297;-0.511875;,
			-0.000984;-0.002297;-0.511875;,
			-0.004266;-0.008203;0.170623;;

			12;
			3; 2,1,0;,
			3; 4,3,2;,
			3; 6,4,5;,
			3; 8,6,7;,
			3; 10,9,8;,
			3; 1,10,11;,
			3; 2,3,1;,
			3; 2,5,4;,
			3; 5,7,6;,
			3; 8,9,6;,
			3; 8,11,10;,
			3; 11,0,1;;
  MeshNormals {
    16;
  -0.852;0.524;-0.008;,
  -0.800;0.599;-0.009;,
  -0.488;0.873;-0.010;,
  -0.447;0.894;-0.010;,
  0.447;0.894;-0.010;,
  0.488;0.873;-0.010;,
  0.800;0.599;-0.009;,
  0.832;-0.555;-0.008;,
  0.472;-0.882;-0.009;,
  0.382;-0.924;-0.010;,
  -0.382;-0.924;-0.010;,
  -0.472;-0.882;-0.009;,
  -0.832;-0.555;-0.008;,
  -0.708;-0.706;-0.010;,
  0.708;-0.706;-0.010;,
  0.852;0.524;-0.008;;

  12;
  3;2,1,0;,
  3;4,3,2;,
  3;6,4,5;,
  3;8,14,7;,
  3;10,9,8;,
  3;13,10,11;,
  3;2,3,1;,
  3;2,5,4;,
  3;5,15,6;,
  3;8,9,14;,
  3;8,11,10;,
  3;11,12,13;;

}

  MeshNormals {
    16;
  -0.852;0.524;-0.008;,
  -0.800;0.599;-0.009;,
  -0.488;0.873;-0.010;,
  -0.447;0.894;-0.010;,
  0.447;0.894;-0.010;,
  0.488;0.873;-0.010;,
  0.800;0.599;-0.009;,
  0.832;-0.555;-0.008;,
  0.472;-0.882;-0.009;,
  0.382;-0.924;-0.010;,
  -0.382;-0.924;-0.010;,
  -0.472;-0.882;-0.009;,
  -0.832;-0.555;-0.008;,
  -0.708;-0.706;-0.010;,
  0.708;-0.706;-0.010;,
  0.852;0.524;-0.008;;

  12;
  3;2,1,0;,
  3;4,3,2;,
  3;6,4,5;,
  3;8,14,7;,
  3;10,9,8;,
  3;13,10,11;,
  3;2,3,1;,
  3;2,5,4;,
  3;5,15,6;,
  3;8,9,14;,
  3;8,11,10;,
  3;11,12,13;;

}

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
				Material ltbrown {
					0.277600;0.114300;0.053100;1.000000;;
					60.000000;
					0.300000;0.123500;0.057400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame dark_wood {
		Mesh mesh-dark_wood {
			12;
			-0.012797;-0.000328;0.525000;,
			-0.009516;-0.000328;0.170623;,
			-0.006234;0.010828;0.525000;,
			-0.004266;0.008203;0.170623;,
			0.004266;0.008203;0.170623;,
			0.006234;0.010828;0.525000;,
			0.009516;-0.000328;0.170623;,
			0.012797;-0.000328;0.525000;,
			0.006234;-0.010828;0.525000;,
			0.004266;-0.008203;0.170623;,
			-0.004266;-0.008203;0.170623;,
			-0.006234;-0.010828;0.525000;;

			16;
			3; 2,1,0;,
			3; 4,3,2;,
			3; 6,4,5;,
			3; 8,6,7;,
			3; 10,9,8;,
			3; 1,10,11;,
			3; 8,5,2;,
			3; 2,3,1;,
			3; 2,5,4;,
			3; 5,7,6;,
			3; 8,9,6;,
			3; 8,11,10;,
			3; 11,0,1;,
			3; 2,0,11;,
			3; 8,7,5;,
			3; 2,11,8;;
  MeshNormals {
    9;
  -0.862;0.507;-0.008;,
  0.000;0.000;1.000;,
  -0.497;0.868;-0.009;,
  0.832;-0.554;-0.009;,
  0.487;0.873;-0.009;,
  -0.832;-0.554;-0.009;,
  0.852;0.524;-0.009;,
  -0.485;-0.875;-0.009;,
  0.485;-0.875;-0.009;;

  16;
  3;2,0,0;,
  3;4,2,2;,
  3;6,4,4;,
  3;8,3,3;,
  3;7,8,8;,
  3;5,7,7;,
  3;1,1,1;,
  3;2,2,0;,
  3;2,4,4;,
  3;4,6,6;,
  3;8,8,3;,
  3;8,7,7;,
  3;7,5,5;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;;

}

  MeshNormals {
    9;
  -0.862;0.507;-0.008;,
  0.000;0.000;1.000;,
  -0.497;0.868;-0.009;,
  0.832;-0.554;-0.009;,
  0.487;0.873;-0.009;,
  -0.832;-0.554;-0.009;,
  0.852;0.524;-0.009;,
  -0.485;-0.875;-0.009;,
  0.485;-0.875;-0.009;;

  16;
  3;2,0,0;,
  3;4,2,2;,
  3;6,4,4;,
  3;8,3,3;,
  3;7,8,8;,
  3;5,7,7;,
  3;1,1,1;,
  3;2,2,0;,
  3;2,4,4;,
  3;4,6,6;,
  3;8,8,3;,
  3;8,7,7;,
  3;7,5,5;,
  3;1,1,1;,
  3;1,1,1;,
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
				Material brown {
					0.085700;0.014700;0.000000;1.000000;;
					65.890000;
					0.163300;0.024000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame tip {
		Mesh mesh-tip {
			12;
			-0.002953;-0.000328;-0.511875;,
			-0.002953;-0.000328;-0.525000;,
			-0.000984;0.002297;-0.525000;,
			-0.000984;0.002297;-0.511875;,
			0.000984;0.002297;-0.511875;,
			0.000984;0.002297;-0.525000;,
			0.002953;-0.000328;-0.525000;,
			0.002953;-0.000328;-0.511875;,
			0.000984;-0.002297;-0.525000;,
			0.000984;-0.002297;-0.511875;,
			-0.000984;-0.002297;-0.511875;,
			-0.000984;-0.002297;-0.525000;;

			16;
			3; 2,1,0;,
			3; 4,2,3;,
			3; 6,5,4;,
			3; 8,6,7;,
			3; 10,8,9;,
			3; 1,11,10;,
			3; 11,2,5;,
			3; 0,3,2;,
			3; 4,5,2;,
			3; 4,7,6;,
			3; 7,9,8;,
			3; 10,11,8;,
			3; 10,0,1;,
			3; 5,6,8;,
			3; 11,1,2;,
			3; 5,8,11;;
  MeshNormals {
    9;
  -0.800;0.600;0.000;,
  0.000;0.000;-1.000;,
  -0.447;0.894;0.000;,
  0.707;-0.707;0.000;,
  0.447;0.894;0.000;,
  -0.707;-0.707;0.000;,
  0.800;0.600;0.000;,
  -0.383;-0.924;0.000;,
  0.383;-0.924;0.000;;

  16;
  3;2,0,0;,
  3;4,2,2;,
  3;6,4,4;,
  3;8,3,3;,
  3;7,8,8;,
  3;5,7,7;,
  3;1,1,1;,
  3;0,2,2;,
  3;4,4,2;,
  3;4,6,6;,
  3;3,8,8;,
  3;7,7,8;,
  3;7,5,5;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;;

}

  MeshNormals {
    9;
  -0.800;0.600;0.000;,
  0.000;0.000;-1.000;,
  -0.447;0.894;0.000;,
  0.707;-0.707;0.000;,
  0.447;0.894;0.000;,
  -0.707;-0.707;0.000;,
  0.800;0.600;0.000;,
  -0.383;-0.924;0.000;,
  0.383;-0.924;0.000;;

  16;
  3;2,0,0;,
  3;4,2,2;,
  3;6,4,4;,
  3;8,3,3;,
  3;7,8,8;,
  3;5,7,7;,
  3;1,1,1;,
  3;0,2,2;,
  3;4,4,2;,
  3;4,6,6;,
  3;3,8,8;,
  3;7,7,8;,
  3;7,5,5;,
  3;1,1,1;,
  3;1,1,1;,
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
				Material archwhite {
					0.995900;0.995900;0.995900;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}

