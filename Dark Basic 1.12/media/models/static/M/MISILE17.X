xof 0302txt 0064
//  DV8583 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame body {
		Mesh mesh-body {
			108;
			0.499999;0.000210;0.034724;,
			0.499990;0.025831;0.024144;,
			0.499978;-0.025393;0.024083;,
			0.499956;0.036476;-0.001456;,
			0.499920;0.025894;-0.027083;,
			0.499900;0.000296;-0.037723;,
			0.499908;-0.025331;-0.027144;,
			0.499940;-0.035971;-0.001545;,
			0.388257;0.036490;-0.001304;,
			0.499920;0.025894;-0.027083;,
			0.499956;0.036476;-0.001457;,
			0.388220;0.025905;-0.026937;,
			0.499900;0.000296;-0.037723;,
			0.388200;0.000303;-0.037579;,
			0.499908;-0.025331;-0.027144;,
			0.388210;-0.025332;-0.026998;,
			0.499940;-0.035971;-0.001545;,
			0.388241;-0.035975;-0.001393;,
			0.499978;-0.025393;0.024083;,
			0.388278;-0.025395;0.024240;,
			0.499999;0.000210;0.034723;,
			0.388299;0.000216;0.034887;,
			0.499990;0.025831;0.024144;,
			0.388289;0.025843;0.024302;,
			0.385067;0.039678;-0.001293;,
			0.385025;0.028164;-0.029182;,
			0.385004;0.000307;-0.040762;,
			0.385012;-0.027585;-0.029251;,
			0.385049;-0.039167;-0.001390;,
			0.385089;-0.027653;0.026499;,
			0.385111;0.000213;0.038083;,
			0.385101;0.028097;0.026568;,
			0.369042;0.040120;-0.001271;,
			0.369002;0.028478;-0.029471;,
			0.368979;0.000311;-0.041182;,
			0.324065;0.041293;-0.001207;,
			0.324023;0.029311;-0.030229;,
			0.324001;0.000323;-0.042279;,
			0.254777;0.042950;-0.001110;,
			0.254733;0.030489;-0.031292;,
			0.254710;0.000339;-0.043824;,
			0.165818;0.044851;-0.000984;,
			0.165773;0.031841;-0.032495;,
			0.165748;0.000364;-0.045578;,
			-0.052526;0.048422;-0.000681;,
			-0.052575;0.034383;-0.034680;,
			-0.052603;0.000419;-0.048797;,
			-0.293825;0.050077;-0.000344;,
			-0.293876;0.035572;-0.035477;,
			-0.293905;0.000477;-0.050065;,
			0.368990;-0.027895;-0.029541;,
			0.369025;-0.039606;-0.001368;,
			0.324010;-0.028702;-0.030299;,
			0.324048;-0.040755;-0.001307;,
			0.254719;-0.029844;-0.031365;,
			0.254759;-0.042378;-0.001214;,
			0.165758;-0.031151;-0.032572;,
			0.165798;-0.044235;-0.001094;,
			-0.052591;-0.033585;-0.034763;,
			-0.052547;-0.047706;-0.000799;,
			-0.293891;-0.034659;-0.035564;,
			-0.293847;-0.049251;-0.000465;,
			0.369067;-0.027963;0.026833;,
			0.369089;0.000214;0.038542;,
			0.324090;-0.028773;0.027714;,
			0.324112;0.000223;0.039765;,
			0.254801;-0.029917;0.028969;,
			0.254826;0.000236;0.041503;,
			0.165845;-0.031227;0.030420;,
			0.165869;0.000256;0.043506;,
			-0.052497;-0.033668;0.033206;,
			-0.052471;0.000302;0.047329;,
			-0.293795;-0.034744;0.034671;,
			-0.293770;0.000356;0.049262;,
			0.369079;0.028410;0.026903;,
			0.324103;0.029241;0.027784;,
			0.254815;0.030415;0.029042;,
			0.165859;0.031766;0.030497;,
			-0.052482;0.034300;0.033289;,
			-0.293781;0.035487;0.034757;,
			-0.349829;0.042406;-0.000276;,
			-0.349873;0.029495;-0.029326;,
			-0.349897;0.000477;-0.042304;,
			-0.418060;0.025514;-0.000201;,
			-0.418078;0.012992;-0.012754;,
			-0.418100;0.000472;-0.025304;,
			-0.475714;0.008623;-0.000140;,
			-0.475727;0.000462;-0.008318;,
			-0.499996;0.000944;-0.000113;,
			-0.499999;0.000457;-0.000599;,
			-0.349885;-0.028575;-0.029398;,
			-0.349847;-0.041556;-0.000379;,
			-0.418085;-0.012084;-0.012784;,
			-0.418071;-0.024637;-0.000262;,
			-0.475717;-0.007722;-0.000159;,
			-0.499998;-0.000033;-0.000113;,
			-0.349805;-0.028645;0.028671;,
			-0.349782;0.000376;0.041657;,
			-0.418052;-0.012114;0.012293;,
			-0.418031;0.000411;0.024847;,
			-0.475704;0.000442;0.008026;,
			-0.499997;0.000455;0.000378;,
			-0.349793;0.029424;0.028743;,
			-0.418044;0.012962;0.012324;,
			-0.499996;0.000944;-0.000113;,
			-0.499997;0.000455;0.000378;,
			-0.499999;0.000457;-0.000600;,
			-0.499998;-0.000033;-0.000113;;

			184;
			3; 2,1,0;,
			3; 1,4,3;,
			3; 4,6,5;,
			3; 6,2,7;,
			3; 2,4,1;,
			3; 4,2,6;,
			3; 10,9,8;,
			3; 11,8,9;,
			3; 9,12,11;,
			3; 13,11,12;,
			3; 12,14,13;,
			3; 15,13,14;,
			3; 14,16,15;,
			3; 17,15,16;,
			3; 16,18,17;,
			3; 19,17,18;,
			3; 18,20,19;,
			3; 21,19,20;,
			3; 20,22,21;,
			3; 23,21,22;,
			3; 22,10,23;,
			3; 8,23,10;,
			3; 8,11,24;,
			3; 25,24,11;,
			3; 11,13,25;,
			3; 26,25,13;,
			3; 13,15,26;,
			3; 27,26,15;,
			3; 15,17,27;,
			3; 28,27,17;,
			3; 17,19,28;,
			3; 29,28,19;,
			3; 19,21,29;,
			3; 30,29,21;,
			3; 21,23,30;,
			3; 31,30,23;,
			3; 23,8,31;,
			3; 24,31,8;,
			3; 32,24,25;,
			3; 25,33,32;,
			3; 33,25,26;,
			3; 26,34,33;,
			3; 32,33,35;,
			3; 36,35,33;,
			3; 33,34,36;,
			3; 37,36,34;,
			3; 35,36,38;,
			3; 39,38,36;,
			3; 36,37,39;,
			3; 40,39,37;,
			3; 38,39,41;,
			3; 42,41,39;,
			3; 39,40,42;,
			3; 43,42,40;,
			3; 41,42,44;,
			3; 45,44,42;,
			3; 42,43,45;,
			3; 46,45,43;,
			3; 44,45,47;,
			3; 48,47,45;,
			3; 45,46,48;,
			3; 49,48,46;,
			3; 34,26,27;,
			3; 27,50,34;,
			3; 50,27,28;,
			3; 28,51,50;,
			3; 34,50,37;,
			3; 52,37,50;,
			3; 50,51,52;,
			3; 53,52,51;,
			3; 37,52,40;,
			3; 54,40,52;,
			3; 52,53,54;,
			3; 55,54,53;,
			3; 40,54,43;,
			3; 56,43,54;,
			3; 54,55,56;,
			3; 57,56,55;,
			3; 43,56,46;,
			3; 58,46,56;,
			3; 56,57,58;,
			3; 59,58,57;,
			3; 46,58,49;,
			3; 60,49,58;,
			3; 58,59,60;,
			3; 61,60,59;,
			3; 51,28,29;,
			3; 29,62,51;,
			3; 62,29,30;,
			3; 30,63,62;,
			3; 51,62,53;,
			3; 64,53,62;,
			3; 62,63,64;,
			3; 65,64,63;,
			3; 53,64,55;,
			3; 66,55,64;,
			3; 64,65,66;,
			3; 67,66,65;,
			3; 55,66,57;,
			3; 68,57,66;,
			3; 66,67,68;,
			3; 69,68,67;,
			3; 57,68,59;,
			3; 70,59,68;,
			3; 68,69,70;,
			3; 71,70,69;,
			3; 59,70,61;,
			3; 72,61,70;,
			3; 70,71,72;,
			3; 73,72,71;,
			3; 63,30,31;,
			3; 31,74,63;,
			3; 74,31,24;,
			3; 24,32,74;,
			3; 63,74,65;,
			3; 75,65,74;,
			3; 74,32,75;,
			3; 35,75,32;,
			3; 65,75,67;,
			3; 76,67,75;,
			3; 75,35,76;,
			3; 38,76,35;,
			3; 67,76,69;,
			3; 77,69,76;,
			3; 76,38,77;,
			3; 41,77,38;,
			3; 69,77,71;,
			3; 78,71,77;,
			3; 77,41,78;,
			3; 44,78,41;,
			3; 71,78,73;,
			3; 79,73,78;,
			3; 78,44,79;,
			3; 47,79,44;,
			3; 47,48,80;,
			3; 81,80,48;,
			3; 48,49,81;,
			3; 82,81,49;,
			3; 80,81,83;,
			3; 84,83,81;,
			3; 81,82,84;,
			3; 85,84,82;,
			3; 83,85,86;,
			3; 87,86,85;,
			3; 86,87,88;,
			3; 89,88,87;,
			3; 49,60,82;,
			3; 90,82,60;,
			3; 60,61,90;,
			3; 91,90,61;,
			3; 82,90,85;,
			3; 92,85,90;,
			3; 90,91,92;,
			3; 93,92,91;,
			3; 85,93,87;,
			3; 94,87,93;,
			3; 87,94,89;,
			3; 95,89,94;,
			3; 61,72,91;,
			3; 96,91,72;,
			3; 72,73,96;,
			3; 97,96,73;,
			3; 91,96,93;,
			3; 98,93,96;,
			3; 96,97,98;,
			3; 99,98,97;,
			3; 93,99,94;,
			3; 100,94,99;,
			3; 94,100,95;,
			3; 101,95,100;,
			3; 73,79,97;,
			3; 102,97,79;,
			3; 79,47,102;,
			3; 80,102,47;,
			3; 97,102,99;,
			3; 103,99,102;,
			3; 102,80,103;,
			3; 83,103,80;,
			3; 99,83,100;,
			3; 86,100,83;,
			3; 100,86,101;,
			3; 88,101,86;,
			3; 106,105,104;,
			3; 105,106,107;;
			MeshMaterialList {
				1;
			184;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

	Frame fins {
		Mesh mesh-fins {
			140;
			0.435786;-0.094638;-0.000661;,
			0.491464;-0.033758;0.009021;,
			0.491440;-0.094644;-0.000728;,
			0.435810;-0.033754;0.009084;,
			0.491451;-0.033746;-0.000656;,
			0.435797;-0.033743;-0.000589;,
			0.491440;-0.033734;-0.010328;,
			0.435785;-0.033731;-0.010258;,
			0.491439;-0.043070;-0.008856;,
			0.435786;-0.043066;-0.008786;,
			0.491441;-0.063708;-0.005602;,
			0.435786;-0.063704;-0.005535;,
			0.491441;-0.084585;-0.002311;,
			0.435787;-0.084580;-0.002244;,
			0.412184;-0.079673;-0.000734;,
			0.435799;-0.064207;0.004213;,
			0.412195;-0.056707;0.002925;,
			0.412203;-0.033741;0.006584;,
			0.388582;-0.064684;-0.000812;,
			0.388590;-0.049206;0.001636;,
			0.388596;-0.033727;0.004085;,
			0.376782;-0.057190;-0.000849;,
			0.376790;-0.033722;0.002835;,
			0.364979;-0.049696;-0.000888;,
			0.364987;-0.033716;0.001584;,
			0.353179;-0.042203;-0.000927;,
			0.353184;-0.033709;0.000335;,
			0.341377;-0.034708;-0.000966;,
			0.341379;-0.033704;-0.000915;,
			0.341378;-0.033953;-0.001001;,
			0.388583;-0.038510;-0.004893;,
			0.388584;-0.048954;-0.003263;,
			0.341378;-0.034205;-0.000990;,
			0.388583;-0.059517;-0.001611;,
			0.341378;-0.034457;-0.000977;,
			0.435870;0.000479;0.088657;,
			0.491434;0.010227;0.027706;,
			0.491525;0.000473;0.088586;,
			0.435781;0.010231;0.027780;,
			0.491434;0.000549;0.027693;,
			0.435780;0.000557;0.027767;,
			0.491432;-0.009123;0.027680;,
			0.435778;-0.009113;0.027753;,
			0.491447;-0.007651;0.037015;,
			0.435793;-0.007641;0.037088;,
			0.491478;-0.004401;0.057653;,
			0.435823;-0.004392;0.057725;,
			0.491508;-0.001111;0.078528;,
			0.435855;-0.001102;0.078599;,
			0.412243;0.000384;0.073725;,
			0.435826;0.005358;0.058230;,
			0.412209;0.004046;0.050762;,
			0.412175;0.007707;0.027799;,
			0.388615;0.000284;0.058770;,
			0.388592;0.002733;0.043295;,
			0.388569;0.005182;0.027819;,
			0.376802;0.000233;0.051294;,
			0.376767;0.003920;0.027828;,
			0.364987;0.000183;0.043816;,
			0.364964;0.002657;0.027838;,
			0.353173;0.000134;0.036339;,
			0.353160;0.001395;0.027848;,
			0.341359;0.000082;0.028862;,
			0.341357;0.000133;0.027857;,
			0.341357;0.000045;0.028107;,
			0.388576;-0.003797;0.032597;,
			0.388591;-0.002167;0.043041;,
			0.341358;0.000058;0.028359;,
			0.388607;-0.000515;0.053605;,
			0.341359;0.000071;0.028609;,
			0.435833;0.094644;0.000280;,
			0.491452;0.033764;-0.009532;,
			0.491487;0.094643;0.000211;,
			0.435799;0.033767;-0.009461;,
			0.491467;0.033751;0.000142;,
			0.435813;0.033754;0.000210;,
			0.491482;0.033737;0.009811;,
			0.435829;0.033740;0.009877;,
			0.491484;0.043073;0.008339;,
			0.435830;0.043074;0.008405;,
			0.491486;0.063709;0.005087;,
			0.435832;0.063712;0.005154;,
			0.491487;0.084585;0.001795;,
			0.435833;0.084587;0.001864;,
			0.412222;0.079682;0.000411;,
			0.435816;0.064218;-0.004593;,
			0.412210;0.056720;-0.003247;,
			0.412196;0.033757;-0.006904;,
			0.388612;0.064699;0.000546;,
			0.388604;0.049222;-0.001900;,
			0.388594;0.033747;-0.004347;,
			0.376807;0.057207;0.000614;,
			0.376793;0.033742;-0.003069;,
			0.365001;0.049715;0.000682;,
			0.364993;0.033737;-0.001791;,
			0.353196;0.042223;0.000750;,
			0.353191;0.033732;-0.000512;,
			0.341391;0.034731;0.000817;,
			0.341390;0.033727;0.000766;,
			0.341391;0.033976;0.000853;,
			0.388611;0.038526;0.004629;,
			0.388611;0.048970;0.002997;,
			0.341391;0.034228;0.000842;,
			0.388612;0.059533;0.001346;,
			0.341391;0.034479;0.000829;,
			0.435786;-0.001005;-0.088586;,
			0.491516;-0.010771;-0.027774;,
			0.491440;-0.001014;-0.088657;,
			0.435860;-0.010758;-0.027703;,
			0.491521;-0.001095;-0.027760;,
			0.435864;-0.001087;-0.027690;,
			0.491524;0.008575;-0.027749;,
			0.435868;0.008581;-0.027677;,
			0.491511;0.007104;-0.037084;,
			0.435856;0.007110;-0.037013;,
			0.491483;0.003855;-0.057721;,
			0.435828;0.003862;-0.057650;,
			0.491456;0.000567;-0.078599;,
			0.435801;0.000577;-0.078527;,
			0.412199;-0.000903;-0.073591;,
			0.435822;-0.005884;-0.058153;,
			0.412227;-0.004565;-0.050626;,
			0.412256;-0.008227;-0.027662;,
			0.388613;-0.000796;-0.058576;,
			0.388631;-0.003246;-0.043097;,
			0.388651;-0.005695;-0.027620;,
			0.376818;-0.000742;-0.051066;,
			0.376849;-0.004430;-0.027599;,
			0.365025;-0.000689;-0.043558;,
			0.365046;-0.003163;-0.027579;,
			0.353232;-0.000636;-0.036050;,
			0.353243;-0.001898;-0.027558;,
			0.341439;-0.000582;-0.028542;,
			0.341441;-0.000632;-0.027537;,
			0.341441;-0.000545;-0.027787;,
			0.388648;0.003283;-0.032400;,
			0.388634;0.001653;-0.042844;,
			0.341441;-0.000557;-0.028038;,
			0.388621;0.000002;-0.053408;,
			0.341440;-0.000570;-0.028289;;

			196;
			3; 2,1,0;,
			3; 3,0,1;,
			3; 1,4,3;,
			3; 5,3,4;,
			3; 4,6,5;,
			3; 7,5,6;,
			3; 7,6,8;,
			3; 8,9,7;,
			3; 8,10,9;,
			3; 11,9,10;,
			3; 10,12,11;,
			3; 13,11,12;,
			3; 12,2,13;,
			3; 0,13,2;,
			3; 0,15,14;,
			3; 16,14,15;,
			3; 15,3,16;,
			3; 17,16,3;,
			3; 14,16,18;,
			3; 19,18,16;,
			3; 16,17,19;,
			3; 20,19,17;,
			3; 18,20,21;,
			3; 22,21,20;,
			3; 21,22,23;,
			3; 24,23,22;,
			3; 23,24,25;,
			3; 26,25,24;,
			3; 25,26,27;,
			3; 28,27,26;,
			3; 3,5,28;,
			3; 5,7,28;,
			3; 7,9,28;,
			3; 29,28,9;,
			3; 9,11,30;,
			3; 31,30,11;,
			3; 30,31,29;,
			3; 32,29,31;,
			3; 11,13,31;,
			3; 33,31,13;,
			3; 31,33,32;,
			3; 34,32,33;,
			3; 13,0,34;,
			3; 27,34,0;,
			3; 12,1,2;,
			3; 10,1,12;,
			3; 8,1,10;,
			3; 8,4,1;,
			3; 4,8,6;,
			3; 37,36,35;,
			3; 38,35,36;,
			3; 36,39,38;,
			3; 40,38,39;,
			3; 39,41,40;,
			3; 42,40,41;,
			3; 42,41,43;,
			3; 43,44,42;,
			3; 43,45,44;,
			3; 46,44,45;,
			3; 45,47,46;,
			3; 48,46,47;,
			3; 47,37,48;,
			3; 35,48,37;,
			3; 35,50,49;,
			3; 51,49,50;,
			3; 50,38,51;,
			3; 52,51,38;,
			3; 49,51,53;,
			3; 54,53,51;,
			3; 51,52,54;,
			3; 55,54,52;,
			3; 53,55,56;,
			3; 57,56,55;,
			3; 56,57,58;,
			3; 59,58,57;,
			3; 58,59,60;,
			3; 61,60,59;,
			3; 60,61,62;,
			3; 63,62,61;,
			3; 38,40,63;,
			3; 40,42,63;,
			3; 42,44,63;,
			3; 64,63,44;,
			3; 44,46,65;,
			3; 66,65,46;,
			3; 65,66,64;,
			3; 67,64,66;,
			3; 46,48,66;,
			3; 68,66,48;,
			3; 66,68,67;,
			3; 69,67,68;,
			3; 48,35,69;,
			3; 62,69,35;,
			3; 43,47,45;,
			3; 47,36,37;,
			3; 43,36,47;,
			3; 43,39,36;,
			3; 39,43,41;,
			3; 72,71,70;,
			3; 73,70,71;,
			3; 71,74,73;,
			3; 75,73,74;,
			3; 74,76,75;,
			3; 77,75,76;,
			3; 77,76,78;,
			3; 78,79,77;,
			3; 78,80,79;,
			3; 81,79,80;,
			3; 80,82,81;,
			3; 83,81,82;,
			3; 82,72,83;,
			3; 70,83,72;,
			3; 70,85,84;,
			3; 86,84,85;,
			3; 85,73,86;,
			3; 87,86,73;,
			3; 84,86,88;,
			3; 89,88,86;,
			3; 86,87,89;,
			3; 90,89,87;,
			3; 88,90,91;,
			3; 92,91,90;,
			3; 91,92,93;,
			3; 94,93,92;,
			3; 93,94,95;,
			3; 96,95,94;,
			3; 95,96,97;,
			3; 98,97,96;,
			3; 73,75,98;,
			3; 75,77,98;,
			3; 77,79,98;,
			3; 99,98,79;,
			3; 79,81,100;,
			3; 101,100,81;,
			3; 100,101,99;,
			3; 102,99,101;,
			3; 81,83,101;,
			3; 103,101,83;,
			3; 101,103,102;,
			3; 104,102,103;,
			3; 83,70,104;,
			3; 97,104,70;,
			3; 82,71,72;,
			3; 80,71,82;,
			3; 74,78,76;,
			3; 78,71,80;,
			3; 71,78,74;,
			3; 107,106,105;,
			3; 108,105,106;,
			3; 106,109,108;,
			3; 110,108,109;,
			3; 109,111,110;,
			3; 112,110,111;,
			3; 112,111,113;,
			3; 113,114,112;,
			3; 113,115,114;,
			3; 116,114,115;,
			3; 115,117,116;,
			3; 118,116,117;,
			3; 117,107,118;,
			3; 105,118,107;,
			3; 105,120,119;,
			3; 121,119,120;,
			3; 120,108,121;,
			3; 122,121,108;,
			3; 119,121,123;,
			3; 124,123,121;,
			3; 121,122,124;,
			3; 125,124,122;,
			3; 123,125,126;,
			3; 127,126,125;,
			3; 126,127,128;,
			3; 129,128,127;,
			3; 128,129,130;,
			3; 131,130,129;,
			3; 130,131,132;,
			3; 133,132,131;,
			3; 108,110,133;,
			3; 110,112,133;,
			3; 112,114,133;,
			3; 134,133,114;,
			3; 114,116,135;,
			3; 136,135,116;,
			3; 135,136,134;,
			3; 137,134,136;,
			3; 116,118,136;,
			3; 138,136,118;,
			3; 136,138,137;,
			3; 139,137,138;,
			3; 118,105,139;,
			3; 132,139,105;,
			3; 117,106,107;,
			3; 115,106,117;,
			3; 109,113,111;,
			3; 113,106,115;,
			3; 106,113,109;;
			MeshMaterialList {
				1;
			196;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

}
