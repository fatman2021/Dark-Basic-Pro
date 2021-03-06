xof 0302txt 0064
//  DV8548 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame fins {
		Mesh mesh-fins {
			72;
			0.098602;1.713070;-0.254459;,
			0.098602;0.924393;3.196600;,
			-0.098588;0.924393;3.196600;,
			-0.098588;1.713070;-0.254459;,
			0.098602;0.924393;-3.705210;,
			-0.098588;0.924393;-3.705210;,
			0.098602;2.501850;-3.705210;,
			-0.098588;2.501850;-3.705210;,
			-1.713090;0.098588;-0.254459;,
			-0.924406;0.098588;3.196600;,
			-0.924406;-0.098602;3.196600;,
			-1.713090;-0.098602;-0.254459;,
			-0.924406;0.098588;-3.705210;,
			-0.924406;-0.098602;-3.705210;,
			-2.501860;0.098588;-3.705210;,
			-2.501860;-0.098602;-3.705210;,
			1.713090;-0.098615;-0.254459;,
			0.924406;-0.098615;3.196600;,
			0.924406;0.098575;3.196600;,
			1.713090;0.098575;-0.254459;,
			0.924406;-0.098615;-3.705210;,
			0.924406;0.098575;-3.705210;,
			2.501860;-0.098615;-3.705210;,
			2.501860;0.098575;-3.705210;,
			-0.098602;-1.713100;-0.254459;,
			-0.098602;-0.924406;3.196600;,
			0.098588;-0.924406;3.196600;,
			0.098588;-1.713100;-0.254459;,
			-0.098602;-0.924406;-3.705210;,
			0.098588;-0.924406;-3.705210;,
			-0.098602;-2.501850;-3.705210;,
			0.098588;-2.501850;-3.705210;,
			0.098602;-0.924446;-5.895630;,
			0.098602;-0.924380;-4.958710;,
			-0.098588;-0.924380;-4.958710;,
			-0.098588;-0.924446;-5.895630;,
			0.098602;-2.501820;-4.958710;,
			-0.098588;-2.501820;-4.958710;,
			0.098602;-2.501820;-6.831950;,
			-0.098588;-2.501820;-6.831950;,
			-0.098588;-0.924380;-6.831950;,
			0.098602;-0.924380;-6.831950;,
			0.098602;2.501770;-5.895630;,
			0.098602;2.501850;-4.958710;,
			-0.098588;2.501850;-4.958710;,
			-0.098588;2.501770;-5.895630;,
			0.098602;0.924393;-4.958710;,
			-0.098588;0.924393;-4.958710;,
			0.098602;0.924393;-6.831950;,
			-0.098588;0.924393;-6.831950;,
			0.098602;2.501850;-6.831950;,
			-0.098588;2.501850;-6.831950;,
			-2.501780;0.098588;-5.895630;,
			-2.501860;0.098588;-4.958710;,
			-2.501860;-0.098602;-4.958710;,
			-2.501780;-0.098602;-5.895630;,
			-0.924406;0.098588;-4.958710;,
			-0.924406;-0.098602;-4.958710;,
			-0.924406;0.098588;-6.831950;,
			-0.924406;-0.098602;-6.831950;,
			-2.501860;0.098588;-6.831950;,
			-2.501860;-0.098602;-6.831950;,
			0.924433;0.098588;-5.895630;,
			0.924367;0.098588;-4.958710;,
			0.924367;-0.098602;-4.958710;,
			0.924433;-0.098602;-5.895630;,
			2.501810;0.098588;-4.958710;,
			2.501810;-0.098602;-4.958710;,
			2.501810;0.098588;-6.831950;,
			2.501810;-0.098602;-6.831950;,
			0.924367;0.098588;-6.831950;,
			0.924367;-0.098602;-6.831950;;

			68;
			4; 3,2,1,0;,
			4; 2,5,4,1;,
			4; 7,3,0,6;,
			3; 3,5,2;,
			3; 5,3,7;,
			3; 0,4,6;,
			3; 0,1,4;,
			4; 11,10,9,8;,
			4; 10,13,12,9;,
			4; 15,11,8,14;,
			3; 11,13,10;,
			3; 13,11,15;,
			3; 8,12,14;,
			3; 8,9,12;,
			4; 19,18,17,16;,
			4; 18,21,20,17;,
			4; 23,19,16,22;,
			3; 19,21,18;,
			3; 21,19,23;,
			3; 16,20,22;,
			3; 16,17,20;,
			4; 27,26,25,24;,
			4; 26,29,28,25;,
			4; 31,27,24,30;,
			3; 27,29,26;,
			3; 29,27,31;,
			3; 24,28,30;,
			3; 24,25,28;,
			4; 35,34,33,32;,
			4; 34,37,36,33;,
			4; 37,39,38,36;,
			4; 37,35,40,39;,
			3; 37,34,35;,
			4; 32,36,38,41;,
			3; 36,32,33;,
			4; 45,44,43,42;,
			4; 44,47,46,43;,
			4; 47,49,48,46;,
			4; 51,45,42,50;,
			4; 47,45,51,49;,
			3; 47,44,45;,
			4; 42,46,48,50;,
			3; 46,42,43;,
			4; 55,54,53,52;,
			4; 54,57,56,53;,
			4; 57,59,58,56;,
			4; 61,55,52,60;,
			4; 57,55,61,59;,
			3; 57,54,55;,
			4; 52,56,58,60;,
			3; 56,52,53;,
			4; 65,64,63,62;,
			4; 64,67,66,63;,
			4; 67,69,68,66;,
			4; 71,65,62,70;,
			4; 67,65,71,69;,
			3; 67,64,65;,
			4; 62,66,68,70;,
			3; 66,62,63;,
			4; 40,35,32,41;,
			4; 41,38,39,40;,
			4; 29,31,30,28;,
			4; 4,5,7,6;,
			4; 12,13,15,14;,
			4; 20,21,23,22;,
			4; 48,49,51,50;,
			4; 58,59,61,60;,
			4; 70,68,69,71;;
  MeshNormals {
    10;
  0.000;0.975;0.223;,
  0.000;0.000;-1.000;,
  0.000;1.000;0.000;,
  0.000;-1.000;0.000;,
  1.000;0.000;0.000;,
  -1.000;0.000;0.000;,
  0.000;0.000;1.000;,
  0.000;-0.975;0.223;,
  -0.975;0.000;0.223;,
  0.975;0.000;0.223;;

  68;
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;0,0,0,0;,
  3;5,5,5;,
  3;5,5,5;,
  3;4,4,4;,
  3;4,4,4;,
  4;8,8,8,8;,
  4;4,4,4,4;,
  4;8,8,8,8;,
  3;3,3,3;,
  3;3,3,3;,
  3;2,2,2;,
  3;2,2,2;,
  4;9,9,9,9;,
  4;5,5,5,5;,
  4;9,9,9,9;,
  3;2,2,2;,
  3;2,2,2;,
  3;3,3,3;,
  3;3,3,3;,
  4;7,7,7,7;,
  4;2,2,2,2;,
  4;7,7,7,7;,
  3;4,4,4;,
  3;4,4,4;,
  3;5,5,5;,
  3;5,5,5;,
  4;2,2,2,2;,
  4;6,6,6,6;,
  4;3,3,3,3;,
  4;5,5,5,5;,
  3;5,5,5;,
  4;4,4,4,4;,
  3;4,4,4;,
  4;2,2,2,2;,
  4;6,6,6,6;,
  4;3,3,3,3;,
  4;2,2,2,2;,
  4;5,5,5,5;,
  3;5,5,5;,
  4;4,4,4,4;,
  3;4,4,4;,
  4;5,5,5,5;,
  4;6,6,6,6;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;3,3,3,3;,
  3;3,3,3;,
  4;2,2,2,2;,
  3;2,2,2;,
  4;5,5,5,5;,
  4;6,6,6,6;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;3,3,3,3;,
  3;3,3,3;,
  4;2,2,2,2;,
  3;2,2,2;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;;

}

			MeshMaterialList {
				1;
			68;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

	Frame body {
		Mesh mesh-body {
			98;
			-0.050356;-0.050356;7.255990;,
			-0.000026;-0.000026;7.255990;,
			-0.000040;-0.100660;7.255990;,
			0.000013;-0.786979;-7.255990;,
			0.000013;-0.000132;-7.255990;,
			-0.556346;-0.556478;-7.255990;,
			0.050330;-0.050356;7.255990;,
			0.100633;-0.000026;7.255990;,
			0.050330;0.050317;7.255990;,
			-0.000040;0.100620;7.255990;,
			-0.050356;0.050317;7.255990;,
			-0.100699;-0.000026;7.255990;,
			-0.786807;-0.000158;-7.255990;,
			-0.556346;0.556266;-7.255990;,
			0.000013;0.786715;-7.255990;,
			0.556372;0.556266;-7.255990;,
			0.786807;-0.000158;-7.255990;,
			0.556372;-0.556478;-7.255990;,
			0.000013;-0.786834;-7.034670;,
			0.556346;-0.556332;-7.034670;,
			0.786781;-0.000026;-7.034670;,
			0.556346;0.556385;-7.034670;,
			0.000013;0.786821;-7.034670;,
			-0.556346;0.556385;-7.034670;,
			-0.786807;-0.000026;-7.034670;,
			-0.556346;-0.556332;-7.034670;,
			0.000013;-1.043340;-6.922270;,
			0.737757;-0.737731;-6.922270;,
			1.043360;-0.000026;-6.922270;,
			0.737757;0.737744;-6.922270;,
			0.000013;1.043340;-6.922270;,
			-0.737731;0.737744;-6.922270;,
			-1.043350;-0.000026;-6.922270;,
			-0.737731;-0.737731;-6.922270;,
			-0.000198;-1.043310;-4.691460;,
			0.737546;-0.737704;-4.691460;,
			1.043140;0.000000;-4.691460;,
			0.737546;0.737784;-4.691460;,
			-0.000198;1.043360;-4.691460;,
			-0.737942;0.737784;-4.691460;,
			-1.043580;0.000000;-4.691460;,
			-0.737942;-0.737704;-4.691460;,
			0.000040;-0.894525;3.361320;,
			0.632533;-0.632520;3.361320;,
			0.894551;-0.000053;3.361320;,
			0.632533;0.632493;3.361320;,
			0.000040;0.894459;3.361320;,
			-0.632441;0.632493;3.361320;,
			-0.894446;-0.000053;3.361320;,
			-0.632441;-0.632520;3.361320;,
			0.000079;-0.820132;3.613760;,
			0.580000;-0.579894;3.613760;,
			0.820211;-0.000026;3.613760;,
			0.580000;0.579921;3.613760;,
			0.000079;0.820119;3.613760;,
			-0.579815;0.579921;3.613760;,
			-0.820053;-0.000026;3.613760;,
			-0.579815;-0.579894;3.613760;,
			0.000079;-0.809103;3.981950;,
			0.572216;-0.572084;3.981940;,
			0.809208;0.000026;3.981940;,
			0.000040;-0.778338;4.864020;,
			0.550449;-0.550303;4.864020;,
			0.778417;0.000026;4.864020;,
			0.000040;-0.731201;5.926080;,
			0.517124;-0.516979;5.926080;,
			0.731306;0.000066;5.926080;,
			-0.000013;-0.671201;6.834270;,
			0.474591;-0.474578;6.834270;,
			0.671201;0.000026;6.834270;,
			0.572216;0.572190;3.981940;,
			0.000079;0.809156;3.981940;,
			0.550449;0.550475;4.864020;,
			0.000040;0.778456;4.864020;,
			0.517124;0.517216;5.926080;,
			0.000040;0.731412;5.926080;,
			0.474591;0.474723;6.834270;,
			-0.000013;0.671306;6.834270;,
			-0.572018;0.572190;3.981940;,
			-0.809050;0.000026;3.981940;,
			-0.550343;0.550475;4.864020;,
			-0.778390;0.000026;4.864020;,
			-0.517071;0.517216;5.926080;,
			-0.731306;0.000066;5.926080;,
			-0.474644;0.474723;6.834270;,
			-0.671293;0.000026;6.834270;,
			-0.572018;-0.572084;3.981940;,
			-0.550343;-0.550303;4.864020;,
			-0.517071;-0.516979;5.926080;,
			-0.474644;-0.474578;6.834270;,
			0.000013;-0.376570;7.147430;,
			0.262493;-0.262454;7.045100;,
			0.376649;0.000026;7.147430;,
			0.262493;0.262533;7.045100;,
			0.000013;0.376689;7.147430;,
			-0.262454;0.262533;7.045100;,
			-0.376675;0.000026;7.147430;,
			-0.262454;-0.262454;7.045100;;

			105;
			3; 2,1,0;,
			3; 5,4,3;,
			3; 6,1,2;,
			3; 7,1,6;,
			3; 8,1,7;,
			3; 9,1,8;,
			3; 10,1,9;,
			3; 11,1,10;,
			3; 0,1,11;,
			3; 12,4,5;,
			3; 13,4,12;,
			3; 14,4,13;,
			3; 15,4,14;,
			3; 16,4,15;,
			3; 17,4,16;,
			3; 3,4,17;,
			4; 17,19,18,3;,
			4; 16,20,19,17;,
			4; 15,21,20,16;,
			4; 14,22,21,15;,
			4; 13,23,22,14;,
			4; 12,24,23,13;,
			4; 5,25,24,12;,
			3; 3,25,5;,
			3; 25,3,18;,
			4; 19,27,26,18;,
			4; 20,28,27,19;,
			4; 21,29,28,20;,
			4; 22,30,29,21;,
			4; 23,31,30,22;,
			4; 24,32,31,23;,
			4; 25,33,32,24;,
			4; 18,26,33,25;,
			4; 27,35,34,26;,
			4; 28,36,35,27;,
			4; 29,37,36,28;,
			4; 30,38,37,29;,
			4; 31,39,38,30;,
			4; 32,40,39,31;,
			4; 33,41,40,32;,
			4; 26,34,41,33;,
			4; 35,43,42,34;,
			4; 36,44,43,35;,
			4; 37,45,44,36;,
			4; 38,46,45,37;,
			4; 39,47,46,38;,
			4; 40,48,47,39;,
			4; 41,49,48,40;,
			4; 34,42,49,41;,
			4; 43,51,50,42;,
			4; 44,52,51,43;,
			4; 45,53,52,44;,
			4; 46,54,53,45;,
			4; 47,55,54,46;,
			4; 48,56,55,47;,
			4; 49,57,56,48;,
			4; 42,50,57,49;,
			4; 51,59,58,50;,
			4; 52,60,59,51;,
			4; 59,62,61,58;,
			4; 60,63,62,59;,
			4; 62,65,64,61;,
			4; 63,66,65,62;,
			4; 65,68,67,64;,
			4; 66,69,68,65;,
			4; 53,70,60,52;,
			4; 54,71,70,53;,
			4; 70,72,63,60;,
			4; 71,73,72,70;,
			4; 72,74,66,63;,
			4; 73,75,74,72;,
			4; 74,76,69,66;,
			4; 75,77,76,74;,
			4; 55,78,71,54;,
			4; 56,79,78,55;,
			4; 78,80,73,71;,
			4; 79,81,80,78;,
			4; 80,82,75,73;,
			4; 81,83,82,80;,
			4; 82,84,77,75;,
			4; 83,85,84,82;,
			4; 57,86,79,56;,
			4; 50,58,86,57;,
			4; 86,87,81,79;,
			4; 58,61,87,86;,
			4; 87,88,83,81;,
			4; 61,64,88,87;,
			4; 88,89,85,83;,
			4; 64,67,89,88;,
			4; 68,91,90,67;,
			4; 91,6,2,90;,
			4; 69,92,91,68;,
			4; 92,7,6,91;,
			4; 76,93,92,69;,
			4; 93,8,7,92;,
			4; 77,94,93,76;,
			4; 94,9,8,93;,
			4; 84,95,94,77;,
			4; 95,10,9,94;,
			4; 85,96,95,84;,
			4; 96,11,10,95;,
			4; 89,97,96,85;,
			4; 97,0,11,96;,
			4; 67,90,97,89;,
			4; 90,2,0,97;;
  MeshNormals {
    58;
  -0.195;-0.195;0.961;,
  0.000;0.000;1.000;,
  0.025;-0.301;0.953;,
  0.000;0.000;-1.000;,
  -0.707;-0.707;-0.000;,
  -1.000;-0.000;-0.000;,
  0.195;-0.195;0.961;,
  0.301;0.025;0.953;,
  0.195;0.195;0.961;,
  -0.025;0.301;0.953;,
  -0.195;0.195;0.961;,
  -0.301;-0.025;0.953;,
  -0.707;0.707;-0.000;,
  0.000;1.000;-0.000;,
  0.707;0.707;0.000;,
  1.000;-0.000;0.000;,
  0.707;-0.707;0.000;,
  0.000;-1.000;0.000;,
  -0.682;0.621;0.386;,
  -0.998;-0.000;0.055;,
  -0.706;-0.706;0.055;,
  0.413;0.496;0.764;,
  0.010;0.901;0.434;,
  0.493;0.005;0.870;,
  0.401;0.000;-0.916;,
  -0.284;-0.284;-0.916;,
  -0.000;-0.401;-0.916;,
  0.284;-0.284;-0.916;,
  -0.005;0.493;0.870;,
  0.284;0.284;-0.916;,
  -0.000;0.401;-0.916;,
  -0.284;0.284;-0.916;,
  -0.401;-0.000;-0.916;,
  -0.621;-0.682;0.386;,
  0.621;0.682;0.386;,
  -0.706;0.706;0.055;,
  0.682;-0.621;0.386;,
  0.496;-0.413;0.764;,
  -0.413;-0.496;0.764;,
  -0.493;-0.005;0.870;,
  0.005;-0.493;0.870;,
  0.998;-0.000;0.055;,
  -0.000;-0.989;0.147;,
  0.699;-0.699;0.147;,
  0.989;-0.000;0.147;,
  0.699;0.699;0.147;,
  -0.000;0.989;0.147;,
  -0.699;0.699;0.147;,
  -0.989;-0.000;0.147;,
  -0.699;-0.699;0.147;,
  0.706;-0.706;0.055;,
  0.000;-0.998;0.055;,
  -0.901;0.010;0.434;,
  -0.496;0.413;0.764;,
  0.706;0.706;0.055;,
  -0.010;-0.901;0.434;,
  0.901;-0.010;0.434;,
  0.000;0.998;0.055;;

  105;
  3;2,1,0;,
  3;3,3,3;,
  3;6,1,2;,
  3;7,1,6;,
  3;8,1,7;,
  3;9,1,8;,
  3;10,1,9;,
  3;11,1,10;,
  3;0,1,11;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  3;3,3,3;,
  4;16,16,17,17;,
  4;15,15,16,16;,
  4;14,14,15,15;,
  4;13,13,14,14;,
  4;12,12,13,13;,
  4;5,5,12,12;,
  4;4,4,5,5;,
  3;17,4,4;,
  3;4,17,17;,
  4;27,27,26,26;,
  4;24,24,27,27;,
  4;29,29,24,24;,
  4;30,30,29,29;,
  4;31,31,30,30;,
  4;32,32,31,31;,
  4;25,25,32,32;,
  4;26,26,25,25;,
  4;16,16,17,17;,
  4;15,15,16,16;,
  4;14,14,15,15;,
  4;13,13,14,14;,
  4;12,12,13,13;,
  4;5,5,12,12;,
  4;4,4,5,5;,
  4;17,17,4,4;,
  4;16,43,42,17;,
  4;15,44,43,16;,
  4;14,45,44,15;,
  4;13,46,45,14;,
  4;12,47,46,13;,
  4;5,48,47,12;,
  4;4,49,48,5;,
  4;17,42,49,4;,
  4;43,43,42,42;,
  4;44,44,43,43;,
  4;45,45,44,44;,
  4;46,46,45,45;,
  4;47,47,46,46;,
  4;48,48,47,47;,
  4;49,49,48,48;,
  4;42,42,49,49;,
  4;43,16,17,42;,
  4;44,15,16,43;,
  4;16,16,17,17;,
  4;15,15,16,16;,
  4;16,50,51,17;,
  4;15,41,50,16;,
  4;50,36,55,51;,
  4;41,56,36,50;,
  4;45,14,15,44;,
  4;46,13,14,45;,
  4;14,14,15,15;,
  4;13,13,14,14;,
  4;14,54,41,15;,
  4;13,57,54,14;,
  4;54,34,56,41;,
  4;57,22,34,54;,
  4;47,12,13,46;,
  4;48,5,12,47;,
  4;12,12,13,13;,
  4;5,5,12,12;,
  4;12,35,57,13;,
  4;5,19,35,12;,
  4;35,18,22,57;,
  4;19,52,18,35;,
  4;49,4,5,48;,
  4;42,17,4,49;,
  4;4,4,5,5;,
  4;17,17,4,4;,
  4;4,20,19,5;,
  4;17,51,20,4;,
  4;20,33,52,19;,
  4;51,55,33,20;,
  4;36,37,40,55;,
  4;37,6,2,40;,
  4;56,23,37,36;,
  4;23,7,6,37;,
  4;34,21,23,56;,
  4;21,8,7,23;,
  4;22,28,21,34;,
  4;28,9,8,21;,
  4;18,53,28,22;,
  4;53,10,9,28;,
  4;52,39,53,18;,
  4;39,11,10,53;,
  4;33,38,39,52;,
  4;38,0,11,39;,
  4;55,40,38,33;,
  4;40,2,0,38;;

}

			MeshMaterialList {
				1;
			105;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

