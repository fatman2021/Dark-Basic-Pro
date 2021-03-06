xof 0302txt 0064
//  DV8442 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame body {
		Mesh mesh-body {
			8;
			-0.415586;0.532536;-0.208227;,
			-0.415586;-0.549999;-0.208227;,
			0.415608;-0.549999;-0.208227;,
			0.415608;0.532536;-0.208227;,
			-0.415586;0.532536;0.155653;,
			-0.415586;-0.549999;0.155653;,
			0.415608;0.532536;0.155653;,
			0.415608;-0.549999;0.155653;;

			5;
			4; 3,2,1,0;,
			4; 0,1,5,4;,
			4; 4,5,7,6;,
			4; 6,7,2,3;,
			4; 1,2,7,5;;
  MeshNormals {
    5;
  0.000;0.000;-1.000;,
  0.000;-1.000;0.000;,
  1.000;0.000;0.000;,
  0.000;0.000;1.000;,
  -1.000;0.000;0.000;;

  5;
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;3,3,3,3;,
  4;2,2,2,2;,
  4;1,1,1,1;;

}

			MeshMaterialList {
				1;
			5;
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

	Frame top {
		Mesh mesh-top {
			12;
			0.441534;0.511083;0.220753;,
			0.441534;0.511083;-0.220754;,
			-0.441534;0.511083;-0.220754;,
			-0.441534;0.511083;0.220753;,
			0.441534;0.549999;0.220754;,
			0.441534;0.549999;-0.220754;,
			-0.441534;0.549999;0.220754;,
			-0.441534;0.549999;-0.220754;,
			0.415608;0.532536;0.155653;,
			-0.415586;0.532536;0.155653;,
			-0.415586;0.532536;-0.208227;,
			0.415608;0.532536;-0.208227;;

			7;
			4; 3,2,1,0;,
			4; 0,1,5,4;,
			4; 4,5,7,6;,
			4; 6,7,2,3;,
			4; 3,0,4,6;,
			4; 1,2,7,5;,
			4; 11,10,9,8;;
  MeshNormals {
    6;
  0.000;-1.000;0.000;,
  0.000;0.000;-1.000;,
  0.000;-0.000;1.000;,
  -1.000;0.000;0.000;,
  1.000;0.000;0.000;,
  0.000;1.000;0.000;;

  7;
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;3,3,3,3;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;5,5,5,5;;

}

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
				Material ltbrown {
					0.277600;0.114300;0.053100;1.000000;;
					60.000000;
					0.300000;0.123500;0.057400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame drawer1 {
		Mesh mesh-drawer1 {
			16;
			0.385705;0.256454;0.155066;,
			0.385705;0.490211;0.155127;,
			-0.393567;0.490211;0.155127;,
			-0.393567;0.256454;0.155066;,
			0.385705;0.256442;0.180996;,
			0.385705;0.490199;0.181057;,
			-0.393567;0.256442;0.180996;,
			-0.393567;0.490199;0.181057;,
			-0.368494;0.468654;-0.182128;,
			-0.368494;0.273890;-0.182128;,
			0.368519;0.273890;-0.182128;,
			0.368519;0.468654;-0.182128;,
			-0.368494;0.468654;0.155513;,
			-0.368494;0.273890;0.155513;,
			0.368519;0.468654;0.155513;,
			0.368519;0.273890;0.155513;;

			12;
			4; 3,2,1,0;,
			4; 0,1,5,4;,
			4; 4,5,7,6;,
			4; 6,7,2,3;,
			4; 3,0,4,6;,
			4; 1,2,7,5;,
			4; 11,10,9,8;,
			4; 8,9,13,12;,
			4; 12,13,15,14;,
			4; 14,15,10,11;,
			4; 11,8,12,14;,
			4; 9,10,15,13;;
  MeshNormals {
    6;
  0.000;0.000;-1.000;,
  0.000;-1.000;0.000;,
  0.000;1.000;0.000;,
  1.000;0.000;0.000;,
  -1.000;0.000;0.000;,
  0.000;-0.000;1.000;;

  12;
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;5,5,5,5;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;3,3,3,3;,
  4;2,2,2,2;,
  4;1,1,1,1;;

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

	Frame drawer2 {
		Mesh mesh-drawer2 {
			16;
			0.385705;-0.000037;0.155066;,
			0.385705;0.233720;0.155127;,
			-0.393567;0.233720;0.155127;,
			-0.393567;-0.000037;0.155066;,
			0.385705;-0.000049;0.180996;,
			0.385705;0.233706;0.181057;,
			-0.393567;-0.000049;0.180996;,
			-0.393567;0.233706;0.181057;,
			-0.368494;0.212164;-0.182128;,
			-0.368494;0.017401;-0.182128;,
			0.368519;0.017401;-0.182128;,
			0.368519;0.212164;-0.182128;,
			-0.368494;0.212164;0.155513;,
			-0.368494;0.017401;0.155513;,
			0.368519;0.212164;0.155513;,
			0.368519;0.017401;0.155513;;

			12;
			4; 3,2,1,0;,
			4; 0,1,5,4;,
			4; 4,5,7,6;,
			4; 6,7,2,3;,
			4; 3,0,4,6;,
			4; 1,2,7,5;,
			4; 11,10,9,8;,
			4; 8,9,13,12;,
			4; 12,13,15,14;,
			4; 14,15,10,11;,
			4; 11,8,12,14;,
			4; 9,10,15,13;;
  MeshNormals {
    6;
  0.000;0.000;-1.000;,
  0.000;-1.000;0.000;,
  0.000;1.000;0.000;,
  1.000;0.000;0.000;,
  -1.000;0.000;0.000;,
  0.000;-0.000;1.000;;

  12;
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;5,5,5,5;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;3,3,3,3;,
  4;2,2,2,2;,
  4;1,1,1,1;;

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

	Frame drawer3 {
		Mesh mesh-drawer3 {
			16;
			0.385705;-0.256516;0.155066;,
			0.385705;-0.022760;0.155127;,
			-0.393567;-0.022760;0.155127;,
			-0.393567;-0.256516;0.155066;,
			0.385705;-0.256530;0.180996;,
			0.385705;-0.022773;0.181057;,
			-0.393567;-0.256530;0.180996;,
			-0.393567;-0.022773;0.181057;,
			-0.368494;-0.044316;-0.182128;,
			-0.368494;-0.239080;-0.182128;,
			0.368519;-0.239080;-0.182128;,
			0.368519;-0.044316;-0.182128;,
			-0.368494;-0.044316;0.155513;,
			-0.368494;-0.239080;0.155513;,
			0.368519;-0.044316;0.155513;,
			0.368519;-0.239080;0.155513;;

			12;
			4; 3,2,1,0;,
			4; 0,1,5,4;,
			4; 4,5,7,6;,
			4; 6,7,2,3;,
			4; 3,0,4,6;,
			4; 1,2,7,5;,
			4; 11,10,9,8;,
			4; 8,9,13,12;,
			4; 12,13,15,14;,
			4; 14,15,10,11;,
			4; 11,8,12,14;,
			4; 9,10,15,13;;
  MeshNormals {
    6;
  0.000;0.000;-1.000;,
  0.000;-1.000;0.000;,
  0.000;1.000;0.000;,
  1.000;0.000;0.000;,
  -1.000;0.000;0.000;,
  0.000;-0.000;1.000;;

  12;
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;5,5,5,5;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;3,3,3,3;,
  4;2,2,2,2;,
  4;1,1,1,1;;

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

	Frame drawer4 {
		Mesh mesh-drawer4 {
			16;
			0.385705;-0.513008;0.155066;,
			0.385705;-0.279253;0.155127;,
			-0.393567;-0.279253;0.155127;,
			-0.393567;-0.513008;0.155066;,
			0.385705;-0.513022;0.180996;,
			0.385705;-0.279265;0.181057;,
			-0.393567;-0.513022;0.180996;,
			-0.393567;-0.279265;0.181057;,
			-0.368494;-0.300807;-0.182128;,
			-0.368494;-0.495569;-0.182128;,
			0.368519;-0.495569;-0.182128;,
			0.368519;-0.300807;-0.182128;,
			-0.368494;-0.300807;0.155513;,
			-0.368494;-0.495569;0.155513;,
			0.368519;-0.300807;0.155513;,
			0.368519;-0.495569;0.155513;;

			13;
			4; 3,2,1,0;,
			4; 0,1,5,4;,
			4; 4,5,7,6;,
			4; 7,3,0,6;,
			3; 3,7,2;,
			3; 6,0,4;,
			4; 1,2,7,5;,
			4; 11,10,9,8;,
			4; 8,9,13,12;,
			4; 12,13,15,14;,
			4; 14,15,10,11;,
			4; 11,8,12,14;,
			4; 9,10,15,13;;
  MeshNormals {
    8;
  0.000;0.000;-1.000;,
  0.000;-1.000;-0.001;,
  0.000;1.000;0.000;,
  0.000;-0.111;0.994;,
  1.000;0.000;0.000;,
  -1.000;0.000;0.000;,
  0.000;-0.055;0.998;,
  0.000;-0.008;1.000;;

  13;
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;7,7,7,6;,
  4;7,3,3,6;,
  3;5,5,5;,
  3;1,1,1;,
  4;2,2,2,2;,
  4;0,0,0,0;,
  4;5,5,5,5;,
  4;7,7,7,7;,
  4;4,4,4,4;,
  4;2,2,2,2;,
  4;1,1,1,1;;

}

			MeshMaterialList {
				1;
			13;
				0,
				0,
				0,
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

	Frame handles {
		Mesh mesh-handles {
			64;
			-0.062827;-0.413000;0.203248;,
			-0.058015;-0.403377;0.198437;,
			-0.056022;-0.403373;0.156121;,
			-0.062827;-0.410178;0.156120;,
			-0.062827;-0.393756;0.203249;,
			-0.062827;-0.396569;0.156121;,
			-0.067638;-0.403380;0.208059;,
			-0.069631;-0.403373;0.156121;,
			0.062842;-0.413000;0.203248;,
			0.058029;-0.403377;0.198437;,
			0.062842;-0.393756;0.203249;,
			0.067653;-0.403380;0.208059;,
			0.062842;-0.410178;0.156120;,
			0.056036;-0.403373;0.156120;,
			0.062842;-0.396569;0.156121;,
			0.069646;-0.403373;0.156121;,
			-0.062827;-0.156511;0.203245;,
			-0.058015;-0.146887;0.198434;,
			-0.056022;-0.146883;0.156120;,
			-0.062827;-0.153686;0.156118;,
			-0.062827;-0.137265;0.203248;,
			-0.062827;-0.140078;0.156120;,
			-0.067638;-0.146888;0.208057;,
			-0.069631;-0.146883;0.156120;,
			0.062842;-0.156511;0.203245;,
			0.058029;-0.146887;0.198434;,
			0.062842;-0.137265;0.203248;,
			0.067653;-0.146888;0.208057;,
			0.062842;-0.153686;0.156118;,
			0.056036;-0.146883;0.156118;,
			0.062842;-0.140078;0.156120;,
			0.069646;-0.146883;0.156120;,
			-0.062827;0.099969;0.203248;,
			-0.058015;0.109593;0.198437;,
			-0.056022;0.109597;0.156121;,
			-0.062827;0.102793;0.156120;,
			-0.062827;0.119215;0.203249;,
			-0.062827;0.116402;0.156121;,
			-0.067638;0.109591;0.208059;,
			-0.069631;0.109597;0.156121;,
			0.062842;0.099969;0.203248;,
			0.058029;0.109593;0.198437;,
			0.062842;0.119215;0.203249;,
			0.067653;0.109591;0.208059;,
			0.062842;0.102793;0.156120;,
			0.056036;0.109597;0.156120;,
			0.062842;0.116402;0.156121;,
			0.069646;0.109597;0.156121;,
			-0.062827;0.356461;0.203245;,
			-0.058015;0.366084;0.198434;,
			-0.056022;0.366088;0.156120;,
			-0.062827;0.359283;0.156118;,
			-0.062827;0.375705;0.203248;,
			-0.062827;0.372893;0.156120;,
			-0.067638;0.366081;0.208057;,
			-0.069631;0.366088;0.156120;,
			0.062842;0.356461;0.203245;,
			0.058029;0.366084;0.198434;,
			0.062842;0.375705;0.203248;,
			0.067653;0.366081;0.208057;,
			0.062842;0.359283;0.156118;,
			0.056036;0.366088;0.156118;,
			0.062842;0.372893;0.156120;,
			0.069646;0.366088;0.156120;;

			56;
			4; 3,2,1,0;,
			4; 2,5,4,1;,
			4; 5,7,6,4;,
			4; 7,3,0,6;,
			4; 0,1,9,8;,
			4; 1,4,10,9;,
			4; 4,6,11,10;,
			4; 6,0,8,11;,
			4; 8,9,13,12;,
			4; 9,10,14,13;,
			4; 10,11,15,14;,
			4; 11,8,12,15;,
			4; 2,3,7,5;,
			4; 13,14,15,12;,
			4; 19,18,17,16;,
			4; 18,21,20,17;,
			4; 21,23,22,20;,
			4; 23,19,16,22;,
			4; 16,17,25,24;,
			4; 17,20,26,25;,
			4; 20,22,27,26;,
			4; 22,16,24,27;,
			4; 24,25,29,28;,
			4; 25,26,30,29;,
			4; 26,27,31,30;,
			4; 27,24,28,31;,
			4; 18,19,23,21;,
			4; 29,30,31,28;,
			4; 35,34,33,32;,
			4; 34,37,36,33;,
			4; 37,39,38,36;,
			4; 39,35,32,38;,
			4; 32,33,41,40;,
			4; 33,36,42,41;,
			4; 36,38,43,42;,
			4; 38,32,40,43;,
			4; 40,41,45,44;,
			4; 41,42,46,45;,
			4; 42,43,47,46;,
			4; 43,40,44,47;,
			4; 34,35,39,37;,
			4; 45,46,47,44;,
			4; 51,50,49,48;,
			4; 50,53,52,49;,
			4; 53,55,54,52;,
			4; 55,51,48,54;,
			4; 48,49,57,56;,
			4; 49,52,58,57;,
			4; 52,54,59,58;,
			4; 54,48,56,59;,
			4; 56,57,61,60;,
			4; 57,58,62,61;,
			4; 58,59,63,62;,
			4; 59,56,60,63;,
			4; 50,51,55,53;,
			4; 61,62,63,60;;
  MeshNormals {
    16;
  0.707;-0.707;0.033;,
  0.887;0.460;0.034;,
  0.899;-0.437;-0.026;,
  0.000;0.447;0.895;,
  0.706;0.707;-0.042;,
  0.000;0.000;-1.000;,
  -0.707;0.707;0.027;,
  -0.706;-0.706;-0.042;,
  0.000;-0.447;-0.894;,
  0.000;-0.447;0.894;,
  0.000;0.447;-0.894;,
  0.000;-0.000;1.000;,
  -0.902;-0.430;0.042;,
  -1.000;0.016;0.008;,
  -0.888;0.458;-0.027;,
  1.000;0.013;0.004;;

  56;
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;6,6,6,6;,
  4;7,7,7,7;,
  4;8,5,5,8;,
  4;5,10,10,5;,
  4;3,11,11,3;,
  4;11,9,9,11;,
  4;12,13,13,12;,
  4;13,14,14,13;,
  4;1,15,15,1;,
  4;15,2,2,15;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;6,6,6,6;,
  4;7,7,7,7;,
  4;8,5,5,8;,
  4;5,10,10,5;,
  4;3,11,11,3;,
  4;11,9,9,11;,
  4;12,13,13,12;,
  4;13,14,14,13;,
  4;1,15,15,1;,
  4;15,2,2,15;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;6,6,6,6;,
  4;7,7,7,7;,
  4;8,5,5,8;,
  4;5,10,10,5;,
  4;3,11,11,3;,
  4;11,9,9,11;,
  4;12,13,13,12;,
  4;13,14,14,13;,
  4;1,15,15,1;,
  4;15,2,2,15;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;6,6,6,6;,
  4;7,7,7,7;,
  4;8,5,5,8;,
  4;5,10,10,5;,
  4;3,11,11,3;,
  4;11,9,9,11;,
  4;12,13,13,12;,
  4;13,14,14,13;,
  4;1,15,15,1;,
  4;15,2,2,15;,
  4;5,5,5,5;,
  4;5,5,5,5;;

}

			MeshMaterialList {
				1;
			56;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

