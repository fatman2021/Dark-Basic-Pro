xof 0302txt 0064
//  DV7305 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame glass {
		Mesh mesh-glass {
			4;
			-0.146929;-0.024713;-2.671767;,
			-0.146856;0.267676;-2.671767;,
			0.146856;0.267676;-2.671767;,
			0.146929;-0.024713;-2.671767;;

			1;
			4; 0,1,2,3;;
  MeshNormals {
    1;
  0.000;0.000;-1.000;;

  1;
  4;0,0,0,0;;

}

			MeshMaterialList {
				1;
			1;
				0;;
				Material glassblutint {
					0.555100;0.800000;0.773000;1.000000;;
					60.000000;
					0.796900;0.971400;0.922300;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame roof {
		Mesh mesh-roof {
			45;
			-1.965178;0.342609;1.138841;,
			-1.928445;0.342609;1.138841;,
			-1.965178;0.342609;1.102108;,
			-1.845798;0.341140;-2.664421;,
			-0.146929;0.341140;-2.664421;,
			-1.845798;0.341140;-2.671767;,
			0.146929;0.341140;-2.664421;,
			1.845798;0.341141;-2.664421;,
			0.146929;0.341140;-2.671767;,
			-0.146856;0.341140;-2.664421;,
			0.146856;0.341140;-2.664421;,
			-0.146856;0.341140;-2.671767;,
			1.838084;0.341140;1.015714;,
			1.845430;0.341140;1.015714;,
			1.838084;0.341141;-2.668388;,
			-1.845430;0.341140;1.015714;,
			-1.838084;0.341140;1.015714;,
			-1.845430;0.341140;-2.668388;,
			1.842051;0.341140;1.019461;,
			1.842051;0.341140;1.012114;,
			-1.842051;0.341140;1.019461;,
			1.928445;0.342609;1.138841;,
			1.965178;0.342609;1.138841;,
			1.928445;0.342609;1.102108;,
			1.928445;0.342610;-2.754782;,
			1.965178;0.342610;-2.754782;,
			1.928445;0.342610;-2.791515;,
			-1.965178;0.342609;-2.754782;,
			-1.928445;0.342609;-2.754782;,
			-1.965178;0.342609;-2.791515;,
			0.000000;0.563003;-0.826337;,
			-2.000000;0.342609;-2.826337;,
			-2.000000;0.342609;1.173663;,
			2.000000;0.342609;1.173663;,
			2.000000;0.342610;-2.826337;,
			-1.928445;0.342609;1.102108;,
			-0.146929;0.341140;-2.671767;,
			1.845798;0.341141;-2.671767;,
			0.146856;0.341140;-2.671767;,
			1.845430;0.341141;-2.668388;,
			-1.838084;0.341140;-2.668388;,
			-1.842051;0.341140;1.012114;,
			1.965178;0.342609;1.102108;,
			1.965178;0.342610;-2.791515;,
			-1.928445;0.342609;-2.791515;;

			26;
			3; 0,1,2;,
			3; 3,4,5;,
			3; 6,7,8;,
			3; 9,10,11;,
			3; 12,13,14;,
			3; 15,16,17;,
			3; 18,19,20;,
			3; 21,22,23;,
			3; 24,25,26;,
			3; 27,28,29;,
			3; 30,31,32;,
			3; 30,32,33;,
			3; 30,33,34;,
			3; 30,34,31;,
			3; 32,31,33;,
			3; 1,35,2;,
			3; 4,36,5;,
			3; 7,37,8;,
			3; 10,38,11;,
			3; 13,39,14;,
			3; 16,40,17;,
			3; 19,41,20;,
			3; 22,42,23;,
			3; 25,43,26;,
			3; 28,44,29;,
			3; 31,34,33;;
  MeshNormals {
    6;
  0.000;1.000;0.000;,
  0.000;-1.000;-0.000;,
  -0.055;0.997;-0.055;,
  -0.055;0.997;0.055;,
  0.055;0.997;0.055;,
  0.055;0.997;-0.055;;

  26;
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,2,3;,
  3;0,3,4;,
  3;0,4,5;,
  3;0,5,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;;

}

			MeshMaterialList {
				1;
			26;
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
				Material brown {
					0.085700;0.014700;0.000000;1.000000;;
					65.890000;
					0.163300;0.024000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame posts {
		Mesh mesh-posts {
			32;
			-1.965178;-0.024713;1.138841;,
			-1.928445;-0.024713;1.138841;,
			-1.965178;0.342609;1.138841;,
			-1.928445;-0.024713;1.102108;,
			-1.965178;-0.024713;1.102108;,
			-1.928445;0.342609;1.102108;,
			-1.965178;0.342609;1.102108;,
			-1.928445;0.342609;1.138841;,
			1.928445;-0.024713;1.138841;,
			1.965178;-0.024713;1.138841;,
			1.928445;0.342609;1.138841;,
			1.965178;-0.024713;1.102108;,
			1.928445;-0.024713;1.102108;,
			1.965178;0.342609;1.102108;,
			1.928445;0.342609;1.102108;,
			1.965178;0.342609;1.138841;,
			1.928445;-0.024713;-2.754782;,
			1.965178;-0.024713;-2.754782;,
			1.928445;0.342610;-2.754782;,
			1.965178;-0.024713;-2.791515;,
			1.928445;-0.024713;-2.791515;,
			1.965178;0.342610;-2.791515;,
			1.928445;0.342610;-2.791515;,
			1.965178;0.342610;-2.754782;,
			-1.965178;-0.024713;-2.754782;,
			-1.928445;-0.024713;-2.754782;,
			-1.965178;0.342609;-2.754782;,
			-1.928445;-0.024713;-2.791515;,
			-1.965178;-0.024713;-2.791515;,
			-1.928445;0.342609;-2.791515;,
			-1.965178;0.342609;-2.791515;,
			-1.928445;0.342609;-2.754782;;

			40;
			3; 0,1,2;,
			3; 3,4,5;,
			3; 1,0,3;,
			3; 4,0,6;,
			3; 1,3,7;,
			3; 8,9,10;,
			3; 11,12,13;,
			3; 9,8,11;,
			3; 12,8,14;,
			3; 9,11,15;,
			3; 16,17,18;,
			3; 19,20,21;,
			3; 17,16,19;,
			3; 20,16,22;,
			3; 17,19,23;,
			3; 24,25,26;,
			3; 27,28,29;,
			3; 25,24,27;,
			3; 28,24,30;,
			3; 25,27,31;,
			3; 1,7,2;,
			3; 4,6,5;,
			3; 0,4,3;,
			3; 0,2,6;,
			3; 3,5,7;,
			3; 9,15,10;,
			3; 12,14,13;,
			3; 8,12,11;,
			3; 8,10,14;,
			3; 11,13,15;,
			3; 17,23,18;,
			3; 20,22,21;,
			3; 16,20,19;,
			3; 16,18,22;,
			3; 19,21,23;,
			3; 25,31,26;,
			3; 28,30,29;,
			3; 24,28,27;,
			3; 24,26,30;,
			3; 27,29,31;;
  MeshNormals {
    5;
  0.000;0.000;1.000;,
  0.000;-1.000;0.000;,
  1.000;0.000;0.000;,
  0.000;0.000;-1.000;,
  -1.000;0.000;0.000;;

  40;
  3;0,0,0;,
  3;3,3,3;,
  3;1,1,1;,
  3;4,4,4;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;1,1,1;,
  3;4,4,4;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;1,1,1;,
  3;4,4,4;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;1,1,1;,
  3;4,4,4;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;1,1,1;,
  3;4,4,4;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;1,1,1;,
  3;4,4,4;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;1,1,1;,
  3;4,4,4;,
  3;2,2,2;,
  3;0,0,0;,
  3;3,3,3;,
  3;1,1,1;,
  3;4,4,4;,
  3;2,2,2;;

}

			MeshMaterialList {
				1;
			40;
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
				Material brown {
					0.085700;0.014700;0.000000;1.000000;;
					65.890000;
					0.163300;0.024000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame hall {
		Mesh mesh-hall {
			56;
			-1.845798;-0.025448;1.019461;,
			1.845798;-0.025448;1.019461;,
			1.845798;-0.023979;1.019461;,
			1.845798;-0.025448;-2.672135;,
			-1.845798;-0.025448;-2.672135;,
			-1.845798;-0.023979;-2.672135;,
			-1.845798;-0.023979;1.019461;,
			1.845798;-0.023978;-2.672135;,
			-1.845798;-0.024713;-2.664421;,
			-0.146929;-0.024713;-2.664421;,
			-1.845798;0.341140;-2.664421;,
			-0.146929;-0.024713;-2.671767;,
			-1.845798;-0.024713;-2.671767;,
			-0.146929;0.341140;-2.671767;,
			0.146929;-0.024713;-2.664421;,
			1.845798;-0.024713;-2.664421;,
			0.146929;0.341140;-2.664421;,
			1.845798;-0.024713;-2.671767;,
			0.146929;-0.024713;-2.671767;,
			1.845798;0.341141;-2.671767;,
			-0.146856;0.267676;-2.664421;,
			0.146856;0.267676;-2.664421;,
			-0.146856;0.341140;-2.664421;,
			0.146856;0.267676;-2.671767;,
			-0.146856;0.267676;-2.671767;,
			0.146856;0.341140;-2.671767;,
			1.838084;-0.024713;1.015714;,
			1.845430;-0.024713;1.015714;,
			1.845430;0.341140;1.015714;,
			1.845430;-0.024713;-2.668388;,
			1.838084;-0.024713;-2.668388;,
			1.838084;0.341141;-2.668388;,
			1.838084;0.341140;1.015714;,
			1.845430;0.341141;-2.668388;,
			-1.845430;-0.024713;1.015714;,
			-1.838084;-0.024713;1.015714;,
			-1.838084;0.341140;1.015714;,
			-1.838084;-0.024713;-2.668388;,
			-1.845430;-0.024713;-2.668388;,
			-1.845430;0.341140;-2.668388;,
			-1.845430;0.341140;1.015714;,
			-1.838084;0.341140;-2.668388;,
			1.842051;-0.024713;1.019461;,
			1.842051;-0.024713;1.012114;,
			1.842051;0.341140;1.012114;,
			-1.842051;-0.024713;1.012114;,
			-1.842051;-0.024713;1.019461;,
			-1.842051;0.341140;1.019461;,
			1.842051;0.341140;1.019461;,
			-1.842051;0.341140;1.012114;,
			-0.146929;0.341140;-2.664421;,
			-1.845798;0.341140;-2.671767;,
			1.845798;0.341141;-2.664421;,
			0.146929;0.341140;-2.671767;,
			0.146856;0.341140;-2.664421;,
			-0.146856;0.341140;-2.671767;;

			70;
			3; 0,1,2;,
			3; 3,4,5;,
			3; 6,2,5;,
			3; 1,0,3;,
			3; 4,0,6;,
			3; 1,3,7;,
			3; 8,9,10;,
			3; 11,12,13;,
			3; 9,8,11;,
			3; 12,8,10;,
			3; 9,11,13;,
			3; 14,15,16;,
			3; 17,18,19;,
			3; 15,14,17;,
			3; 18,14,16;,
			3; 15,17,19;,
			3; 20,21,22;,
			3; 23,24,25;,
			3; 24,20,22;,
			3; 21,23,25;,
			3; 26,27,28;,
			3; 29,30,31;,
			3; 27,26,29;,
			3; 30,26,32;,
			3; 27,29,33;,
			3; 34,35,36;,
			3; 37,38,39;,
			3; 35,34,37;,
			3; 38,34,40;,
			3; 35,37,41;,
			3; 42,43,44;,
			3; 45,46,47;,
			3; 43,42,45;,
			3; 46,42,48;,
			3; 43,45,49;,
			3; 2,6,0;,
			3; 5,7,3;,
			3; 2,7,5;,
			3; 0,4,3;,
			3; 6,5,4;,
			3; 7,2,1;,
			3; 9,50,10;,
			3; 12,51,13;,
			3; 8,12,11;,
			3; 10,51,12;,
			3; 13,50,9;,
			3; 15,52,16;,
			3; 18,53,19;,
			3; 14,18,17;,
			3; 16,53,18;,
			3; 19,52,15;,
			3; 21,54,22;,
			3; 24,55,25;,
			3; 22,55,24;,
			3; 25,54,21;,
			3; 28,32,26;,
			3; 31,33,29;,
			3; 26,30,29;,
			3; 32,31,30;,
			3; 33,28,27;,
			3; 36,40,34;,
			3; 39,41,37;,
			3; 34,38,37;,
			3; 40,39,38;,
			3; 41,36,35;,
			3; 44,48,42;,
			3; 47,49,45;,
			3; 42,46,45;,
			3; 48,47,46;,
			3; 49,44,43;;
  MeshNormals {
    6;
  0.000;0.000;1.000;,
  0.000;-1.000;0.000;,
  0.000;0.000;-1.000;,
  1.000;0.000;0.000;,
  -1.000;0.000;0.000;,
  -0.000;1.000;0.000;;

  70;
  3;0,0,0;,
  3;2,2,2;,
  3;5,5,5;,
  3;1,1,1;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;2,2,2;,
  3;1,1,1;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;2,2,2;,
  3;1,1,1;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;2,2,2;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;2,2,2;,
  3;1,1,1;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;2,2,2;,
  3;1,1,1;,
  3;4,4,4;,
  3;3,3,3;,
  3;3,3,3;,
  3;4,4,4;,
  3;1,1,1;,
  3;0,0,0;,
  3;2,2,2;,
  3;0,0,0;,
  3;2,2,2;,
  3;5,5,5;,
  3;1,1,1;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;2,2,2;,
  3;1,1,1;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;2,2,2;,
  3;1,1,1;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;2,2,2;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;2,2,2;,
  3;1,1,1;,
  3;4,4,4;,
  3;3,3,3;,
  3;0,0,0;,
  3;2,2,2;,
  3;1,1,1;,
  3;4,4,4;,
  3;3,3,3;,
  3;3,3,3;,
  3;4,4,4;,
  3;1,1,1;,
  3;0,0,0;,
  3;2,2,2;;

}

			MeshMaterialList {
				1;
			70;
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
				Material tan {
					0.661200;0.522100;0.218600;1.000000;;
					60.000000;
					0.502000;0.411800;0.215200;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame doors {
		Mesh mesh-doors {
			84;
			0.014693;0.114061;-2.664421;,
			0.132236;0.114061;-2.664421;,
			0.132236;0.128754;-2.664421;,
			0.132236;0.114061;-2.671767;,
			0.014693;0.114061;-2.671767;,
			0.014693;0.128754;-2.671767;,
			0.014693;0.128754;-2.664421;,
			0.132236;0.128754;-2.671767;,
			0.014693;0.252836;-2.664421;,
			0.132236;0.252836;-2.664421;,
			0.132236;0.267529;-2.664421;,
			0.132236;0.252836;-2.671767;,
			0.014693;0.252836;-2.671767;,
			0.014693;0.267529;-2.671767;,
			0.014693;0.267529;-2.664421;,
			0.132236;0.267529;-2.671767;,
			0.014693;-0.024713;-2.664421;,
			0.132236;-0.024713;-2.664421;,
			0.132236;-0.010020;-2.664421;,
			0.132236;-0.024713;-2.671767;,
			0.014693;-0.024713;-2.671767;,
			0.014693;-0.010020;-2.671767;,
			0.014693;-0.010020;-2.664421;,
			0.132236;-0.010020;-2.671767;,
			0.000000;-0.024713;-2.664421;,
			0.014693;-0.024713;-2.664421;,
			0.014693;0.267529;-2.664421;,
			0.014693;-0.024713;-2.671767;,
			0.000000;-0.024713;-2.671767;,
			0.000000;0.267529;-2.671767;,
			0.000000;0.267529;-2.664421;,
			0.014693;0.267529;-2.671767;,
			0.132236;-0.024713;-2.664421;,
			0.146929;-0.024713;-2.664421;,
			0.146929;0.267529;-2.664421;,
			0.146929;-0.024713;-2.671767;,
			0.132236;-0.024713;-2.671767;,
			0.132236;0.267529;-2.671767;,
			0.132236;0.267529;-2.664421;,
			0.146929;0.267529;-2.671767;,
			-0.132236;0.114061;-2.664421;,
			-0.014693;0.114061;-2.664421;,
			-0.014693;0.128754;-2.664421;,
			-0.014693;0.114061;-2.671767;,
			-0.132236;0.114061;-2.671767;,
			-0.132236;0.128754;-2.671767;,
			-0.132236;0.128754;-2.664421;,
			-0.014693;0.128754;-2.671767;,
			-0.132236;0.252836;-2.664421;,
			-0.014693;0.252836;-2.664421;,
			-0.014693;0.267529;-2.664421;,
			-0.014693;0.252836;-2.671767;,
			-0.132236;0.252836;-2.671767;,
			-0.132236;0.267529;-2.671767;,
			-0.132236;0.267529;-2.664421;,
			-0.014693;0.267529;-2.671767;,
			-0.132236;-0.024713;-2.664421;,
			-0.014693;-0.024713;-2.664421;,
			-0.014693;-0.010020;-2.664421;,
			-0.014693;-0.024713;-2.671767;,
			-0.132236;-0.024713;-2.671767;,
			-0.132236;-0.010020;-2.671767;,
			-0.132236;-0.010020;-2.664421;,
			-0.014693;-0.010020;-2.671767;,
			-0.146929;-0.024713;-2.664421;,
			-0.132236;-0.024713;-2.664421;,
			-0.132236;0.267529;-2.664421;,
			-0.132236;-0.024713;-2.671767;,
			-0.146929;-0.024713;-2.671767;,
			-0.146929;0.267529;-2.671767;,
			-0.146929;0.267529;-2.664421;,
			-0.132236;0.267529;-2.671767;,
			-0.014693;-0.024713;-2.664421;,
			0.000000;-0.024713;-2.664421;,
			0.000000;0.267529;-2.664421;,
			0.000000;-0.024713;-2.671767;,
			-0.014693;-0.024713;-2.671767;,
			-0.014693;0.267529;-2.671767;,
			-0.014693;0.267529;-2.664421;,
			0.000000;0.267529;-2.671767;,
			0.146856;0.267676;-2.664421;,
			-0.146856;0.267676;-2.664421;,
			0.146856;0.267676;-2.671767;,
			-0.146856;0.267676;-2.671767;;

			122;
			3; 0,1,2;,
			3; 3,4,5;,
			3; 6,2,7;,
			3; 1,0,4;,
			3; 4,0,6;,
			3; 1,3,7;,
			3; 8,9,10;,
			3; 11,12,13;,
			3; 14,10,15;,
			3; 9,8,12;,
			3; 12,8,14;,
			3; 9,11,15;,
			3; 16,17,18;,
			3; 19,20,21;,
			3; 22,18,23;,
			3; 17,16,20;,
			3; 20,16,22;,
			3; 17,19,23;,
			3; 24,25,26;,
			3; 27,28,29;,
			3; 30,26,31;,
			3; 25,24,28;,
			3; 28,24,29;,
			3; 25,27,26;,
			3; 32,33,34;,
			3; 35,36,37;,
			3; 38,34,39;,
			3; 33,32,36;,
			3; 36,32,37;,
			3; 33,35,34;,
			3; 40,41,42;,
			3; 43,44,45;,
			3; 46,42,47;,
			3; 41,40,44;,
			3; 44,40,46;,
			3; 41,43,47;,
			3; 48,49,50;,
			3; 51,52,53;,
			3; 54,50,55;,
			3; 49,48,52;,
			3; 52,48,54;,
			3; 49,51,55;,
			3; 56,57,58;,
			3; 59,60,61;,
			3; 62,58,63;,
			3; 57,56,60;,
			3; 60,56,62;,
			3; 57,59,63;,
			3; 64,65,66;,
			3; 67,68,69;,
			3; 70,66,71;,
			3; 65,64,68;,
			3; 68,64,69;,
			3; 65,67,66;,
			3; 72,73,74;,
			3; 75,76,77;,
			3; 78,74,79;,
			3; 73,72,76;,
			3; 76,72,77;,
			3; 73,75,74;,
			3; 80,81,82;,
			3; 2,6,0;,
			3; 5,7,3;,
			3; 7,5,6;,
			3; 4,3,1;,
			3; 6,5,4;,
			3; 7,2,1;,
			3; 10,14,8;,
			3; 13,15,11;,
			3; 15,13,14;,
			3; 12,11,9;,
			3; 14,13,12;,
			3; 15,10,9;,
			3; 18,22,16;,
			3; 21,23,19;,
			3; 23,21,22;,
			3; 20,19,17;,
			3; 22,21,20;,
			3; 23,18,17;,
			3; 26,30,24;,
			3; 29,31,27;,
			3; 31,29,30;,
			3; 28,27,25;,
			3; 24,30,29;,
			3; 27,31,26;,
			3; 34,38,32;,
			3; 37,39,35;,
			3; 39,37,38;,
			3; 36,35,33;,
			3; 32,38,37;,
			3; 35,39,34;,
			3; 42,46,40;,
			3; 45,47,43;,
			3; 47,45,46;,
			3; 44,43,41;,
			3; 46,45,44;,
			3; 47,42,41;,
			3; 50,54,48;,
			3; 53,55,51;,
			3; 55,53,54;,
			3; 52,51,49;,
			3; 54,53,52;,
			3; 55,50,49;,
			3; 58,62,56;,
			3; 61,63,59;,
			3; 63,61,62;,
			3; 60,59,57;,
			3; 62,61,60;,
			3; 63,58,57;,
			3; 66,70,64;,
			3; 69,71,67;,
			3; 71,69,70;,
			3; 68,67,65;,
			3; 64,70,69;,
			3; 67,71,66;,
			3; 74,78,72;,
			3; 77,79,75;,
			3; 79,77,78;,
			3; 76,75,73;,
			3; 72,78,77;,
			3; 75,79,74;,
			3; 81,83,82;;
  MeshNormals {
    6;
  0.000;0.000;1.000;,
  1.000;0.000;0.000;,
  -1.000;0.000;0.000;,
  0.000;0.000;-1.000;,
  0.000;1.000;0.000;,
  0.000;-1.000;0.000;;

  122;
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;5,5,5;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;0,0,0;,
  3;3,3,3;,
  3;4,4,4;,
  3;5,5,5;,
  3;2,2,2;,
  3;1,1,1;,
  3;5,5,5;;

}

			MeshMaterialList {
				1;
			122;
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

}
