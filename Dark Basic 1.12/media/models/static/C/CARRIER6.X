xof 0302txt 0064
//  DV2759 Copyright Viewpoint Datalabs Intl., Inc.
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
			1.033644;0.627525;-0.077433;,
			0.344244;0.627525;-0.077397;,
			0.344244;0.401175;-0.069297;,
			1.033644;0.401175;-0.069333;;

			1;
			4; 3,2,1,0;;
  MeshNormals {
    1;
  -0.000;-0.036;-0.999;;

  1;
  4;0,0,0,0;;

}

			MeshMaterialList {
				1;
			1;
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

	Frame rlight {
		Mesh mesh-rlight {
			4;
			-0.899846;-1.149075;2.954767;,
			-1.641447;-1.149075;2.954806;,
			-1.641438;-0.699975;3.105556;,
			-0.899839;-0.358875;3.105518;;

			1;
			4; 3,2,1,0;;
  MeshNormals {
    1;
  0.145;-0.315;0.938;;

  1;
  4;0,0,0,0;;

}

			MeshMaterialList {
				1;
			1;
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

	Frame arial1 {
		Mesh mesh-arial1 {
			4;
			0.000064;2.231775;1.261821;,
			-0.020182;0.401175;1.339222;,
			-0.010283;0.401175;1.313122;,
			0.020318;0.401175;1.339220;;

			2;
			3; 2,1,0;,
			3; 1,3,0;;
  MeshNormals {
    2;
  -0.935;-0.005;-0.355;,
  0.000;0.042;0.999;;

  2;
  3;0,0,0;,
  3;1,1,1;;

}

			MeshMaterialList {
				1;
			2;
				0,
				0;;
				Material silver {
					0.616300;0.616300;0.616300;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame htop {
		Mesh mesh-htop {
			12;
			1.190245;0.176175;-0.061242;,
			1.190244;0.401175;-0.069342;,
			1.033644;0.401175;-0.069333;,
			1.119596;0.176175;-0.061238;,
			1.343633;-0.531675;-1.227200;,
			1.018291;-0.531675;-1.092183;,
			0.692933;-0.531675;-1.227165;,
			0.557916;-0.531675;-1.552508;,
			0.692899;-0.531675;-1.877866;,
			1.018243;-0.531675;-2.012883;,
			1.343600;-0.531675;-1.877901;,
			1.478616;-0.531675;-1.552557;;

			2;
			4; 3,2,1,0;,
			8; 11,10,9,8,7,6,5,4;;
  MeshNormals {
    2;
  -0.000;-0.036;-0.999;,
  0.000;1.000;0.000;;

  2;
  4;0,0,0,0;,
  8;1,1,1,1,1,1,1,1;;

}

			MeshMaterialList {
				1;
			2;
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

	Frame llight {
		Mesh mesh-llight {
			4;
			1.642204;-1.149075;2.954634;,
			0.900153;-1.149075;2.954673;,
			0.900161;-0.358875;3.105423;,
			1.642211;-0.699975;3.105385;;

			2;
			3; 2,1,0;,
			3; 3,2,0;;
  MeshNormals {
    3;
  -0.069;-0.250;0.966;,
  0.000;-0.187;0.982;,
  -0.145;-0.315;0.938;;

  2;
  3;0,1,0;,
  3;2,0,0;;

}

			MeshMaterialList {
				1;
			2;
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

	Frame towfron {
		Mesh mesh-towfron {
			12;
			1.190245;0.016425;-0.055392;,
			1.461145;0.016425;-0.055406;,
			1.461145;0.176175;-0.061256;,
			1.190245;0.176175;-0.061242;,
			1.461188;0.401175;0.733444;,
			1.461188;0.176175;0.740194;,
			1.190288;0.176175;0.740208;,
			1.190288;0.401175;0.733458;,
			1.461144;0.401175;-0.069356;,
			1.190244;0.401175;-0.069342;,
			1.461188;0.016425;0.745594;,
			1.190288;0.016425;0.745608;;

			4;
			4; 3,2,1,0;,
			4; 7,6,5,4;,
			4; 3,9,8,2;,
			4; 5,6,11,10;;
  MeshNormals {
    2;
  -0.000;-0.037;-0.999;,
  0.000;0.034;0.999;;

  4;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;1,1,1,1;;

}

			MeshMaterialList {
				1;
			4;
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

	Frame tow {
		Mesh mesh-tow {
			10;
			1.190288;0.016425;0.745608;,
			1.461188;0.016425;0.745594;,
			1.461145;0.016425;-0.055406;,
			1.190245;0.016425;-0.055392;,
			1.461144;0.401175;-0.069356;,
			1.461145;0.176175;-0.061256;,
			1.461188;0.176175;0.740194;,
			1.461188;0.401175;0.733444;,
			1.190288;0.401175;0.733458;,
			1.190244;0.401175;-0.069342;;

			4;
			4; 3,2,1,0;,
			4; 7,6,5,4;,
			4; 9,8,7,4;,
			4; 5,6,1,2;;
  MeshNormals {
    3;
  0.000;-1.000;0.000;,
  0.000;1.000;0.000;,
  1.000;-0.000;-0.000;;

  4;
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;2,2,2,2;;

}

			MeshMaterialList {
				1;
			4;
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

	Frame twheels {
		Mesh mesh-twheels {
			32;
			1.040117;-1.452375;3.198116;,
			1.040116;-1.671525;3.169316;,
			1.040076;-2.231775;2.434916;,
			1.039401;-2.220525;-1.854936;,
			1.039355;-1.659375;-2.743684;,
			1.039350;-1.442475;-2.834583;,
			1.039361;-1.092375;-2.596533;,
			1.040102;-1.091025;2.916866;,
			-1.510933;-1.452375;3.198699;,
			-1.510935;-1.671525;3.169451;,
			-1.510973;-2.231775;2.435050;,
			-1.511199;-2.220525;-1.854802;,
			-1.511246;-1.659375;-2.743550;,
			-1.511250;-1.442475;-2.834449;,
			-1.511239;-1.092375;-2.596399;,
			-1.510948;-1.091025;2.917001;,
			-1.031273;-2.231775;2.435024;,
			-1.031235;-1.671525;3.169425;,
			-1.031234;-1.452375;3.198675;,
			-1.031249;-1.091025;2.916975;,
			-1.031989;-1.092375;-2.596426;,
			-1.032001;-1.442475;-2.834476;,
			-1.031996;-1.659375;-2.743575;,
			-1.031950;-2.220525;-1.854826;,
			1.519326;-2.231775;2.434891;,
			1.519815;-1.671525;3.169291;,
			1.519816;-1.452375;3.198091;,
			1.519801;-1.091025;2.916389;,
			1.519062;-1.092375;-2.596560;,
			1.519049;-1.442475;-2.834610;,
			1.519054;-1.659375;-2.743709;,
			1.519100;-2.220525;-1.854960;;

			4;
			8; 7,6,5,4,3,2,1,0;,
			8; 15,14,13,12,11,10,9,8;,
			8; 23,22,21,20,19,18,17,16;,
			8; 31,30,29,28,27,26,25,24;;
  MeshNormals {
    2;
  -1.000;-0.000;0.000;,
  1.000;0.000;-0.000;;

  4;
  8;0,0,0,0,0,0,0,0;,
  8;0,0,0,0,0,0,0,0;,
  8;1,1,1,1,1,1,1,1;,
  8;1,1,1,1,1,1,1,1;;

}

			MeshMaterialList {
				1;
			4;
				0,
				0,
				0,
				0;;
				Material black {
					0.002000;0.002000;0.002000;1.000000;;
					157.360000;
					0.518400;0.518400;0.518400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame rot {
		Mesh mesh-rot {
			16;
			-0.584108;-0.395325;-0.108398;,
			0.062979;-0.395325;-0.364483;,
			0.062979;-0.256275;-0.369432;,
			-0.584108;-0.256275;-0.113348;,
			-0.584043;-0.395325;1.127752;,
			-0.852724;-0.395325;0.509466;,
			-0.852726;-0.256275;0.504516;,
			-0.584043;-0.256275;1.122802;,
			0.711057;-0.395325;1.127684;,
			0.063522;-0.395325;1.383768;,
			0.063520;-0.256275;1.378818;,
			0.711057;-0.256275;1.122734;,
			0.710993;-0.395325;-0.108466;,
			0.979675;-0.395325;0.509369;,
			0.979675;-0.256275;0.504419;,
			0.710993;-0.256275;-0.113416;;

			10;
			4; 3,2,1,0;,
			4; 7,6,5,4;,
			4; 11,10,9,8;,
			4; 15,14,13,12;,
			8; 11,14,15,2,3,6,7,10;,
			8; 0,1,12,13,8,9,4,5;,
			4; 14,11,8,13;,
			4; 10,7,4,9;,
			4; 6,3,0,5;,
			4; 2,15,12,1;;
  MeshNormals {
    10;
  -0.699;-0.025;-0.714;,
  -0.000;-0.036;-0.999;,
  0.000;1.000;0.000;,
  0.000;-1.000;0.000;,
  -0.691;0.026;0.723;,
  -1.000;0.000;0.009;,
  1.000;-0.000;-0.009;,
  0.690;-0.026;-0.723;,
  0.691;0.026;0.723;,
  0.000;0.036;0.999;;

  10;
  4;0,1,1,0;,
  4;4,5,5,4;,
  4;8,9,9,8;,
  4;7,6,6,7;,
  8;2,2,2,2,2,2,2,2;,
  8;3,3,3,3,3,3,3,3;,
  4;6,8,8,6;,
  4;9,4,4,9;,
  4;5,0,0,5;,
  4;1,7,7,1;;

}

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
				Material black {
					0.002000;0.002000;0.002000;1.000000;;
					157.360000;
					0.518400;0.518400;0.518400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame obvs {
		Mesh mesh-obvs {
			21;
			1.190288;0.401175;0.733458;,
			1.190288;0.176175;0.740208;,
			1.125937;0.176175;0.740212;,
			1.041786;0.401175;0.733466;,
			1.190288;0.016425;0.745608;,
			1.190245;0.016425;-0.055392;,
			1.190245;0.176175;-0.061242;,
			0.000064;2.231775;1.261821;,
			0.010417;0.401175;1.313120;,
			0.020318;0.401175;1.339220;,
			1.037715;0.627525;0.324416;,
			1.033644;0.627525;-0.077433;,
			1.033644;0.401175;-0.069333;,
			1.037715;0.401175;0.332516;,
			0.344244;0.627525;-0.077397;,
			0.345616;0.627525;0.324453;,
			0.345616;0.401175;0.332553;,
			0.344244;0.401175;-0.069297;,
			-0.010283;0.401175;1.313122;,
			1.190244;0.401175;-0.069342;,
			1.119596;0.176175;-0.061238;;

			10;
			4; 3,2,1,0;,
			4; 1,6,5,4;,
			3; 9,8,7;,
			4; 13,12,11,10;,
			4; 17,16,15,14;,
			4; 15,10,11,14;,
			4; 16,13,10,15;,
			3; 8,18,7;,
			5; 12,13,3,0,19;,
			4; 2,20,6,1;;
  MeshNormals {
    7;
  0.000;0.030;1.000;,
  0.000;-1.000;0.000;,
  0.000;1.000;0.000;,
  -0.000;-0.028;-1.000;,
  -1.000;0.000;0.000;,
  1.000;-0.000;-0.010;,
  0.935;-0.005;-0.355;;

  10;
  4;0,0,0,0;,
  4;4,4,4,4;,
  3;6,6,6;,
  4;5,5,5,5;,
  4;4,4,4,4;,
  4;2,2,2,2;,
  4;0,0,0,0;,
  3;3,3,3;,
  5;2,0,2,2,2;,
  4;1,1,1,1;;

}

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
				Material tan {
					0.661200;0.522100;0.218600;1.000000;;
					60.000000;
					0.502000;0.411800;0.215200;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame thatch {
		Mesh mesh-thatch {
			16;
			-0.018880;0.401175;0.420322;,
			-0.346937;0.401175;0.291189;,
			-0.675430;0.401175;0.420357;,
			-0.811314;0.401175;0.734014;,
			-0.675397;0.401175;1.047207;,
			-0.346889;0.401175;1.176789;,
			-0.018847;0.401175;1.047172;,
			0.116586;0.401175;0.733965;,
			0.057186;0.493875;0.730368;,
			-0.060728;0.493875;0.457224;,
			-0.346934;0.493875;0.344739;,
			-0.633128;0.493875;0.457254;,
			-0.751914;0.493875;0.730411;,
			-0.633098;0.493875;1.003554;,
			-0.346893;0.493875;1.116939;,
			-0.060699;0.493875;1.003524;;

			10;
			8; 7,6,5,4,3,2,1,0;,
			4; 0,9,8,7;,
			4; 2,11,10,1;,
			4; 4,13,12,3;,
			4; 6,15,14,5;,
			4; 7,8,15,6;,
			4; 5,14,13,4;,
			4; 3,12,11,2;,
			4; 1,10,9,0;,
			8; 8,9,10,11,12,13,14,15;;
  MeshNormals {
    15;
  0.000;-1.000;0.000;,
  0.000;1.000;0.000;,
  -0.841;0.541;0.006;,
  -0.601;0.515;-0.611;,
  0.842;0.539;0.006;,
  0.582;0.547;0.601;,
  -0.000;0.544;0.839;,
  -0.582;0.547;0.602;,
  0.564;0.826;-0.006;,
  0.589;0.515;-0.623;,
  -0.000;0.500;-0.866;,
  0.388;0.830;0.400;,
  -0.564;0.826;-0.006;,
  -0.387;0.830;0.401;,
  -0.000;0.831;0.556;;

  10;
  8;0,0,0,0,0,0,0,0;,
  4;9,9,8,4;,
  4;3,3,10,10;,
  4;7,13,12,2;,
  4;5,11,14,6;,
  4;4,8,11,5;,
  4;6,14,13,7;,
  4;2,12,3,3;,
  4;10,10,9,9;,
  8;8,1,1,1,12,13,14,11;;

}

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
				Material tan {
					0.661200;0.522100;0.218600;1.000000;;
					60.000000;
					0.502000;0.411800;0.215200;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame barrel {
		Mesh mesh-barrel {
			18;
			0.031832;0.128475;-2.202281;,
			0.031832;0.165825;-2.203632;,
			-0.000118;0.184725;-2.204080;,
			-0.032518;0.165825;-2.203629;,
			-0.032518;0.128475;-2.202277;,
			-0.000118;0.109575;-2.201830;,
			-0.000114;0.124425;-2.132529;,
			-0.000058;0.114075;-1.068279;,
			0.028292;0.130725;-1.068730;,
			0.019237;0.135675;-2.132981;,
			0.028292;0.164025;-1.070081;,
			0.019237;0.158625;-2.133882;,
			-0.000058;0.180675;-1.070529;,
			-0.000114;0.170325;-2.134329;,
			-0.028857;0.164025;-1.070079;,
			-0.019913;0.158625;-2.133879;,
			-0.028857;0.130725;-1.068727;,
			-0.019913;0.135675;-2.132979;;

			13;
			6; 5,4,3,2,1,0;,
			4; 9,8,7,6;,
			4; 11,10,8,9;,
			4; 13,12,10,11;,
			4; 15,14,12,13;,
			4; 17,16,14,15;,
			4; 6,7,16,17;,
			4; 5,6,17,4;,
			4; 4,17,15,3;,
			4; 3,15,13,2;,
			4; 2,13,11,1;,
			4; 1,11,9,0;,
			4; 0,9,6,5;;
  MeshNormals {
    23;
  -0.007;-0.036;-0.999;,
  0.507;0.844;0.174;,
  -0.501;0.861;0.089;,
  -0.501;0.866;-0.009;,
  -0.500;-0.866;-0.008;,
  0.005;-0.978;0.208;,
  0.004;-0.995;0.102;,
  0.506;-0.862;-0.008;,
  0.863;-0.506;-0.010;,
  0.864;-0.493;0.101;,
  0.873;0.488;-0.010;,
  0.864;0.494;0.101;,
  0.507;0.862;-0.008;,
  0.509;0.857;0.087;,
  -0.871;0.491;-0.010;,
  -0.861;0.497;0.102;,
  -0.861;-0.509;-0.010;,
  -0.862;-0.497;0.103;,
  0.855;-0.476;0.205;,
  0.846;0.494;0.201;,
  -0.498;0.849;0.178;,
  -0.843;0.497;0.204;,
  -0.853;-0.479;0.208;;

  13;
  6;0,0,0,0,0,0;,
  4;9,8,7,6;,
  4;11,10,8,9;,
  4;13,12,10,11;,
  4;15,14,3,2;,
  4;17,16,14,15;,
  4;6,4,16,17;,
  4;5,6,17,22;,
  4;22,17,15,21;,
  4;21,15,2,20;,
  4;1,13,11,19;,
  4;19,11,9,18;,
  4;18,9,6,5;;

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
				Material tan {
					0.661200;0.522100;0.218600;1.000000;;
					60.000000;
					0.502000;0.411800;0.215200;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame boot {
		Mesh mesh-boot {
			18;
			-0.081030;0.100575;-0.525576;,
			-0.081030;0.194175;-0.529175;,
			-0.000030;0.240975;-0.530529;,
			0.080520;0.194175;-0.529184;,
			0.080520;0.100575;-0.525583;,
			-0.000030;0.053775;-0.524229;,
			-0.000046;0.053775;-0.838779;,
			0.080504;0.100575;-0.840133;,
			0.080504;0.194175;-0.843284;,
			-0.000047;0.240975;-0.845079;,
			-0.081046;0.194175;-0.843276;,
			-0.081046;0.100575;-0.840125;,
			-0.028857;0.130725;-1.068727;,
			-0.000058;0.114075;-1.068279;,
			-0.028857;0.164025;-1.070079;,
			-0.000058;0.180675;-1.070529;,
			0.028292;0.164025;-1.070081;,
			0.028292;0.130725;-1.068730;;

			13;
			6; 5,4,3,2,1,0;,
			4; 7,4,5,6;,
			4; 8,3,4,7;,
			4; 9,2,3,8;,
			4; 10,1,2,9;,
			4; 11,0,1,10;,
			4; 6,5,0,11;,
			4; 13,6,11,12;,
			4; 12,11,10,14;,
			4; 14,10,9,15;,
			4; 15,9,8,16;,
			4; 16,8,7,17;,
			4; 17,7,6,13;;
  MeshNormals {
    21;
  -0.006;0.038;0.999;,
  -0.500;-0.866;0.000;,
  -0.500;0.866;0.000;,
  0.502;-0.865;-0.000;,
  0.862;-0.507;-0.000;,
  0.871;0.490;-0.000;,
  0.001;-0.992;-0.122;,
  0.859;-0.497;-0.123;,
  0.861;0.493;-0.125;,
  0.001;0.992;-0.127;,
  -0.861;0.494;-0.125;,
  -0.858;-0.498;-0.123;,
  -0.839;-0.481;-0.255;,
  0.001;-0.967;-0.254;,
  -0.836;0.485;-0.257;,
  0.001;0.966;-0.258;,
  0.836;0.484;-0.257;,
  0.840;-0.479;-0.255;,
  -0.861;-0.508;0.000;,
  -0.871;0.491;0.000;,
  0.502;0.865;-0.000;;

  13;
  6;0,0,0,0,0,0;,
  4;7,4,3,6;,
  4;8,5,4,7;,
  4;9,20,5,8;,
  4;10,19,2,9;,
  4;11,18,19,10;,
  4;6,1,18,11;,
  4;13,6,11,12;,
  4;12,11,10,14;,
  4;14,10,9,15;,
  4;15,9,8,16;,
  4;16,8,7,17;,
  4;17,7,6,13;;

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
				Material tan {
					0.661200;0.522100;0.218600;1.000000;;
					60.000000;
					0.502000;0.411800;0.215200;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame tread1 {
		Mesh mesh-tread1 {
			32;
			1.519100;-2.220525;-1.854960;,
			1.519054;-1.659375;-2.743709;,
			1.039355;-1.659375;-2.743684;,
			1.039401;-2.220525;-1.854936;,
			1.519815;-1.671525;3.169291;,
			1.519326;-2.231775;2.434891;,
			1.040076;-2.231775;2.434916;,
			1.040116;-1.671525;3.169316;,
			1.519801;-1.091025;2.916389;,
			1.519816;-1.452375;3.198091;,
			1.040117;-1.452375;3.198116;,
			1.040102;-1.091025;2.916866;,
			1.519049;-1.442475;-2.834610;,
			1.519062;-1.092375;-2.596560;,
			1.039361;-1.092375;-2.596533;,
			1.039350;-1.442475;-2.834583;,
			-1.031950;-2.220525;-1.854826;,
			-1.031996;-1.659375;-2.743575;,
			-1.511246;-1.659375;-2.743550;,
			-1.511199;-2.220525;-1.854802;,
			-1.031235;-1.671525;3.169425;,
			-1.031273;-2.231775;2.435024;,
			-1.510973;-2.231775;2.435050;,
			-1.510935;-1.671525;3.169451;,
			-1.031249;-1.091025;2.916975;,
			-1.031234;-1.452375;3.198675;,
			-1.510933;-1.452375;3.198699;,
			-1.510948;-1.091025;2.917001;,
			-1.032001;-1.442475;-2.834476;,
			-1.031989;-1.092375;-2.596426;,
			-1.511239;-1.092375;-2.596399;,
			-1.511250;-1.442475;-2.834449;;

			16;
			4; 3,2,1,0;,
			4; 7,6,5,4;,
			4; 11,10,9,8;,
			4; 15,14,13,12;,
			4; 19,18,17,16;,
			4; 23,22,21,20;,
			4; 27,26,25,24;,
			4; 31,30,29,28;,
			4; 30,27,24,29;,
			4; 26,23,20,25;,
			4; 22,19,16,21;,
			4; 18,31,28,17;,
			4; 14,11,8,13;,
			4; 10,7,4,9;,
			4; 6,3,0,5;,
			4; 2,15,12,1;;
  MeshNormals {
    8;
  -0.000;-0.960;-0.279;,
  -0.000;-0.646;-0.763;,
  -0.000;0.100;-0.995;,
  0.000;0.262;0.965;,
  0.000;-0.501;0.865;,
  0.000;-0.948;0.319;,
  -0.000;0.884;-0.468;,
  0.000;0.899;0.439;;

  16;
  4;0,1,1,0;,
  4;4,5,5,4;,
  4;7,3,3,7;,
  4;2,6,6,2;,
  4;0,1,1,0;,
  4;4,5,5,4;,
  4;7,3,3,7;,
  4;2,6,6,2;,
  4;6,7,7,6;,
  4;3,4,4,3;,
  4;5,0,0,5;,
  4;1,2,2,1;,
  4;6,7,7,6;,
  4;3,4,4,3;,
  4;5,0,0,5;,
  4;1,2,2,1;;

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
				Material black {
					0.002000;0.002000;0.002000;1.000000;;
					157.360000;
					0.518400;0.518400;0.518400;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame turt {
		Mesh mesh-turt {
			49;
			-0.020182;0.401175;1.339222;,
			0.020318;0.401175;1.339220;,
			0.330824;0.401175;1.453954;,
			-0.330676;0.401175;1.453988;,
			1.041786;0.401175;0.733466;,
			0.346986;0.401175;0.733953;,
			0.345616;0.401175;0.332553;,
			1.037715;0.401175;0.332516;,
			1.017498;0.401175;0.938667;,
			0.960355;0.401175;1.085370;,
			0.845614;0.401175;1.236127;,
			0.694420;0.401175;1.353134;,
			0.572022;0.401175;1.403541;,
			-1.041713;0.401175;0.734026;,
			-1.033656;0.401175;-0.069225;,
			-0.344256;0.401175;-0.069261;,
			-0.346914;0.401175;0.733989;,
			0.344244;0.401175;-0.069297;,
			-0.551726;0.401175;-0.462551;,
			0.551224;0.401175;-0.463058;,
			0.010417;0.401175;1.313120;,
			-0.010283;0.401175;1.313122;,
			-0.571877;0.401175;1.403601;,
			-0.694281;0.401175;1.353208;,
			-0.845487;0.401175;1.236215;,
			-0.959795;0.401175;1.085472;,
			-1.017403;0.401175;0.938774;,
			1.033644;0.401175;-0.069333;,
			-1.200634;-0.256275;-0.625867;,
			-1.210016;-0.256275;0.690385;,
			-1.181653;-0.256275;0.912683;,
			-1.115046;-0.256275;1.071080;,
			-0.982287;-0.256275;1.233973;,
			-0.806781;-0.256275;1.360863;,
			-0.664127;-0.256275;1.415306;,
			-0.384225;-0.256275;1.469741;,
			0.384376;-0.256275;1.469701;,
			0.664272;-0.256275;1.415236;,
			0.806920;-0.256275;1.360779;,
			0.982413;-0.256275;1.233869;,
			1.115155;-0.256275;1.070962;,
			1.181746;-0.256275;0.912109;,
			1.210088;-0.256275;0.746507;,
			1.205545;-0.256275;-0.052692;,
			1.200566;-0.256275;-0.625993;,
			0.640293;-0.256275;-1.051664;,
			-0.640857;-0.256275;-1.051595;,
			1.119596;0.176175;-0.061238;,
			1.125937;0.176175;0.740212;;

			35;
			4; 3,2,1,0;,
			4; 7,6,5,4;,
			8; 5,2,12,11,10,9,8,4;,
			4; 16,15,14,13;,
			4; 16,6,17,15;,
			3; 16,5,6;,
			4; 15,17,19,18;,
			4; 5,16,21,20;,
			3; 15,18,14;,
			8; 3,16,13,26,25,24,23,22;,
			3; 19,17,27;,
			4; 16,3,0,21;,
			4; 2,5,20,1;,
			19; 46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28;,
			4; 45,46,18,19;,
			4; 44,45,19,27;,
			4; 46,28,14,18;,
			3; 44,27,47;,
			3; 47,43,44;,
			4; 40,41,8,9;,
			4; 38,39,10,11;,
			4; 36,37,12,2;,
			4; 34,35,3,22;,
			4; 32,33,23,24;,
			4; 30,31,25,26;,
			4; 28,29,13,14;,
			4; 29,30,26,13;,
			4; 31,32,24,25;,
			4; 33,34,22,23;,
			4; 35,36,2,3;,
			4; 37,38,11,12;,
			4; 39,40,9,10;,
			3; 42,48,4;,
			4; 4,8,41,42;,
			4; 43,47,48,42;;
  MeshNormals {
    27;
  0.000;1.000;0.000;,
  0.975;0.216;0.053;,
  0.965;0.236;0.114;,
  0.981;0.195;-0.008;,
  -0.220;0.674;-0.705;,
  0.224;0.667;-0.711;,
  0.697;0.541;-0.472;,
  -0.837;0.181;0.517;,
  -0.086;-0.002;0.996;,
  0.944;0.226;0.239;,
  0.848;0.192;0.495;,
  0.688;0.146;0.711;,
  0.483;0.098;0.870;,
  0.281;0.059;0.958;,
  -0.597;0.782;-0.175;,
  0.101;0.035;0.994;,
  -0.463;0.087;0.882;,
  -0.281;0.054;0.958;,
  -0.164;0.881;-0.445;,
  0.167;0.877;-0.449;,
  -0.968;0.242;0.061;,
  -0.689;0.137;0.712;,
  0.000;-1.000;0.000;,
  -0.943;0.223;0.245;,
  0.961;0.269;-0.068;,
  -0.693;0.559;-0.454;,
  0.548;0.742;-0.387;;

  35;
  4;0,0,0,0;,
  4;0,0,0,0;,
  8;0,0,0,0,0,0,0,0;,
  4;0,0,14,0;,
  4;0,0,0,0;,
  3;0,0,0;,
  4;0,0,19,18;,
  4;0,0,0,0;,
  3;0,18,14;,
  8;0,0,0,0,0,0,0,0;,
  3;19,0,26;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  19;22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22;,
  4;5,4,18,19;,
  4;6,5,19,26;,
  4;4,25,14,18;,
  3;6,26,24;,
  3;24,3,6;,
  4;10,9,9,10;,
  4;12,11,11,12;,
  4;15,13,13,15;,
  4;17,8,8,17;,
  4;21,16,16,21;,
  4;23,7,7,23;,
  4;25,20,20,14;,
  4;20,23,23,20;,
  4;7,21,21,7;,
  4;16,17,17,16;,
  4;8,15,15,8;,
  4;13,12,12,13;,
  4;11,10,10,11;,
  3;8,8,8;,
  4;2,9,9,1;,
  4;3,24,3,1;;

}

			MeshMaterialList {
				1;
			35;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

	Frame body {
		Mesh mesh-body {
			93;
			-1.642165;-0.701775;-2.158544;,
			-1.642164;-1.149975;-2.132895;,
			-1.642220;-1.149975;-3.198044;,
			-1.642221;-1.127925;-3.223694;,
			1.642204;-1.149075;2.954634;,
			1.642211;-0.699975;3.105385;,
			1.642149;-0.700425;1.930885;,
			1.641571;-0.700875;-0.520715;,
			1.641484;-0.701775;-2.158715;,
			1.641486;-1.149975;-2.133067;,
			1.641428;-1.127925;-3.223867;,
			1.641430;-1.149975;-3.198217;,
			-1.642080;-0.700875;-0.520543;,
			-1.641500;-0.700425;1.931057;,
			-1.641447;-1.149075;2.954806;,
			-1.641438;-0.699975;3.105556;,
			0.900152;-1.861875;2.907423;,
			0.900160;-1.149075;3.073024;,
			0.900153;-1.149075;2.954673;,
			0.900145;-1.861875;2.789073;,
			-0.899846;-1.149075;2.954767;,
			-0.899854;-1.861875;2.789168;,
			-0.900115;-1.861875;-2.158582;,
			-0.900114;-1.149975;-2.132934;,
			0.899870;-1.861875;-2.456126;,
			0.899885;-1.861875;-2.158677;,
			0.899887;-1.149975;-2.133028;,
			0.899831;-1.149975;-3.198178;,
			-0.900131;-1.861875;-2.456032;,
			-0.900169;-1.149975;-3.198083;,
			-0.899840;-1.149075;3.073118;,
			-0.899849;-1.861875;2.907517;,
			0.899828;-1.127925;-3.223828;,
			-0.900172;-1.127925;-3.223733;,
			0.900161;-0.358875;3.105423;,
			0.900099;-0.359325;1.930924;,
			1.370331;-0.436725;1.561899;,
			-0.899900;-0.359325;1.931018;,
			-1.369720;-0.436725;1.562043;,
			0.046310;-0.466875;-0.720883;,
			0.469684;-0.587925;-2.158654;,
			0.473348;-0.587475;-0.946355;,
			-0.900115;-0.587925;-2.158582;,
			-0.900029;-0.359775;-0.520582;,
			-1.369801;-0.437175;0.018993;,
			0.899885;-0.587925;-2.158677;,
			-0.900039;-0.466875;-0.720833;,
			0.899970;-0.359775;-0.520676;,
			0.899949;-0.587475;-0.946377;,
			1.369799;-0.437175;0.018849;,
			-0.899839;-0.358875;3.105518;,
			0.900168;-0.358875;3.223773;,
			-0.899832;-0.358875;3.223867;,
			1.343600;-0.704025;-1.877901;,
			1.018243;-0.704025;-2.012883;,
			0.692899;-0.704025;-1.877866;,
			0.557916;-0.704025;-1.552508;,
			0.692933;-0.704025;-1.227165;,
			1.018291;-0.704025;-1.092183;,
			1.343633;-0.704025;-1.227200;,
			1.478616;-0.704025;-1.552557;,
			1.343600;-0.531675;-1.877901;,
			1.018243;-0.531675;-2.012883;,
			0.692899;-0.531675;-1.877866;,
			0.557916;-0.531675;-1.552508;,
			0.692933;-0.531675;-1.227165;,
			1.018291;-0.531675;-1.092183;,
			1.343633;-0.531675;-1.227200;,
			1.478616;-0.531675;-1.552557;,
			1.686760;-1.656675;3.081082;,
			1.627810;-1.656675;3.081085;,
			1.627815;-1.192275;3.148583;,
			1.743915;-1.192275;3.148578;,
			1.627054;-1.656675;-2.727965;,
			1.686455;-1.656675;-2.727968;,
			1.743135;-1.189575;-3.096072;,
			1.627035;-1.189575;-3.096066;,
			1.686471;-0.739575;-2.414318;,
			1.627071;-0.739575;-2.414314;,
			1.627817;-0.745875;3.207984;,
			1.686768;-0.745875;3.207982;,
			-1.686440;-1.656675;3.081260;,
			-1.686745;-1.656675;-2.727791;,
			-1.743915;-1.189575;-3.095888;,
			-1.743135;-1.192275;3.149211;,
			-1.627795;-1.656675;-2.727793;,
			-1.627039;-1.656675;3.081257;,
			-1.627037;-1.192275;3.149206;,
			-1.627815;-1.189575;-3.095895;,
			-1.627033;-0.745875;3.208157;,
			-1.686433;-0.745875;3.208159;,
			-1.686728;-0.739575;-2.414140;,
			-1.627779;-0.739575;-2.414143;;

			85;
			4; 3,2,1,0;,
			3; 6,5,4;,
			3; 4,7,6;,
			4; 4,9,8,7;,
			4; 11,10,8,9;,
			3; 0,13,12;,
			4; 0,1,14,13;,
			3; 14,15,13;,
			4; 19,18,17,16;,
			4; 23,22,21,20;,
			4; 27,26,25,24;,
			4; 25,26,18,19;,
			4; 23,29,28,22;,
			4; 20,21,31,30;,
			4; 23,20,14,1;,
			4; 26,27,11,9;,
			4; 18,26,9,4;,
			4; 29,23,1,2;,
			4; 29,33,32,27;,
			4; 27,32,10,11;,
			4; 28,29,27,24;,
			4; 33,29,2,3;,
			4; 6,35,34,5;,
			3; 36,35,6;,
			3; 38,13,37;,
			3; 41,40,39;,
			3; 42,33,0;,
			4; 44,38,37,43;,
			3; 43,12,44;,
			5; 33,42,40,45,32;,
			4; 42,46,39,40;,
			3; 7,48,47;,
			4; 49,36,6,7;,
			4; 48,7,8,45;,
			4; 32,45,8,10;,
			4; 36,49,47,35;,
			3; 7,47,49;,
			4; 39,47,48,41;,
			4; 37,35,47,43;,
			3; 46,12,43;,
			4; 38,44,12,13;,
			3; 12,46,0;,
			3; 46,42,0;,
			4; 40,41,48,45;,
			4; 47,39,46,43;,
			4; 35,37,50,34;,
			4; 37,13,15,50;,
			3; 33,3,0;,
			4; 52,30,17,51;,
			4; 30,31,16,17;,
			4; 22,28,24,25;,
			4; 21,22,25,19;,
			4; 21,19,16,31;,
			4; 50,20,30,52;,
			4; 18,34,51,17;,
			4; 34,50,52,51;,
			8; 60,59,58,57,56,55,54,53;,
			4; 54,62,61,53;,
			4; 56,64,63,55;,
			4; 58,66,65,57;,
			4; 60,68,67,59;,
			4; 59,67,66,58;,
			4; 57,65,64,56;,
			4; 55,63,62,54;,
			4; 53,61,68,60;,
			4; 72,71,70,69;,
			4; 76,75,74,73;,
			4; 76,78,77,75;,
			4; 74,69,70,73;,
			4; 71,79,78,76;,
			4; 75,77,80,72;,
			4; 77,78,79,80;,
			4; 72,80,79,71;,
			4; 71,76,73,70;,
			4; 75,72,69,74;,
			4; 84,83,82,81;,
			4; 88,87,86,85;,
			4; 90,84,87,89;,
			4; 92,91,90,89;,
			4; 91,83,84,90;,
			4; 89,87,88,92;,
			4; 81,82,85,86;,
			4; 92,88,83,91;,
			4; 83,88,85,82;,
			4; 87,84,81,86;;
  MeshNormals {
    46;
  -1.000;-0.000;0.000;,
  -0.992;0.126;0.000;,
  1.000;0.000;-0.000;,
  -0.000;-0.619;-0.785;,
  0.000;-0.138;0.990;,
  -0.000;0.835;-0.551;,
  0.864;0.501;0.049;,
  0.834;0.544;-0.092;,
  -0.000;-0.893;-0.449;,
  0.000;-1.000;0.000;,
  0.000;1.000;0.001;,
  -0.993;-0.121;0.000;,
  -0.893;-0.451;0.000;,
  -0.864;0.501;0.049;,
  -0.025;0.904;-0.427;,
  0.992;0.125;0.000;,
  0.000;-0.226;0.974;,
  0.707;0.000;-0.707;,
  -0.418;0.909;-0.000;,
  -0.426;0.898;-0.112;,
  0.068;0.890;-0.451;,
  -0.000;0.928;-0.371;,
  0.000;0.000;1.000;,
  0.993;-0.122;-0.000;,
  -0.000;-0.851;-0.525;,
  -0.000;-0.938;-0.348;,
  -0.000;-0.758;-0.652;,
  0.147;0.961;-0.235;,
  0.707;0.000;0.707;,
  0.136;0.884;-0.448;,
  -0.000;0.958;-0.287;,
  0.418;0.909;-0.000;,
  -0.000;0.000;-1.000;,
  -0.707;0.000;-0.707;,
  0.142;0.990;-0.000;,
  0.175;0.984;0.037;,
  0.445;0.891;0.088;,
  -0.175;0.984;0.037;,
  -0.445;0.891;0.088;,
  -0.145;0.958;-0.248;,
  -0.707;0.000;0.707;,
  0.092;0.974;-0.206;,
  -0.073;0.960;-0.270;,
  0.448;0.893;-0.049;,
  -0.447;0.893;-0.048;,
  -0.142;0.990;-0.000;;

  85;
  4;0,0,0,0;,
  3;6,2,2;,
  3;2,7,6;,
  4;2,2,2,7;,
  4;2,2,2,2;,
  3;0,13,12;,
  4;0,0,0,13;,
  3;0,0,13;,
  4;2,2,2,2;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;2,2,2,2;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;9,9,9,9;,
  4;9,24,25,9;,
  4;9,9,9,9;,
  4;24,9,9,25;,
  4;24,26,26,24;,
  4;24,26,26,25;,
  4;25,24,24,25;,
  4;26,24,25,26;,
  4;6,35,34,31;,
  3;36,35,6;,
  3;38,13,37;,
  3;41,22,30;,
  3;42,14,39;,
  4;44,38,37,39;,
  3;39,19,44;,
  5;14,42,22,41,20;,
  4;42,39,30,22;,
  3;7,27,27;,
  4;43,36,6,7;,
  4;27,7,27,41;,
  4;20,41,27,29;,
  4;36,43,27,35;,
  3;7,27,43;,
  4;30,27,27,41;,
  4;37,35,27,39;,
  3;39,19,39;,
  4;38,44,19,13;,
  3;19,39,39;,
  3;39,42,39;,
  4;22,41,27,41;,
  4;27,30,39,39;,
  4;35,37,45,34;,
  4;37,13,18,45;,
  3;14,21,39;,
  4;16,16,16,16;,
  4;16,16,16,16;,
  4;9,25,25,9;,
  4;9,9,9,9;,
  4;9,9,9,9;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;34,45,10,10;,
  8;9,9,9,9,9,9,9,9;,
  4;32,32,17,17;,
  4;0,0,33,33;,
  4;22,22,40,40;,
  4;2,2,28,28;,
  4;28,28,22,22;,
  4;40,40,0,0;,
  4;33,33,32,32;,
  4;17,17,2,2;,
  4;4,4,4,4;,
  4;3,3,8,8;,
  4;5,30,30,5;,
  4;8,9,9,8;,
  4;0,0,0,0;,
  4;2,15,15,2;,
  4;30,30,10,10;,
  4;4,4,4,4;,
  4;0,0,0,0;,
  4;2,2,23,23;,
  4;0,0,11,11;,
  4;2,2,2,2;,
  4;4,4,4,4;,
  4;30,30,10,10;,
  4;1,0,0,1;,
  4;2,2,2,2;,
  4;9,8,8,9;,
  4;30,5,5,30;,
  4;3,3,8,8;,
  4;4,4,4,4;;

}

			MeshMaterialList {
				1;
			85;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

}

