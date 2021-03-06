xof 0302txt 0064
//  DV7247 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame arm_posts {
		Mesh mesh-arm_posts {
			16;
			-0.733305;-0.297900;-0.359058;,
			-0.670066;-0.297900;-0.360129;,
			-0.733305;0.229619;-0.359058;,
			-0.670066;0.229619;-0.360129;,
			-0.731547;-0.297900;-0.296855;,
			-0.731547;0.229619;-0.296855;,
			-0.669346;-0.297900;-0.297910;,
			-0.669346;0.229619;-0.297910;,
			0.471900;-0.297900;-0.331361;,
			0.471900;0.229619;-0.331361;,
			0.534101;-0.297900;-0.332413;,
			0.534101;0.229619;-0.332413;,
			0.533380;-0.297900;-0.394636;,
			0.533380;0.229619;-0.394636;,
			0.470141;-0.297900;-0.393562;,
			0.470141;0.229619;-0.393562;;

			16;
			3; 2,1,0;,
			3; 3,1,2;,
			3; 5,0,4;,
			3; 2,0,5;,
			3; 1,7,6;,
			3; 1,3,7;,
			3; 6,5,4;,
			3; 6,7,5;,
			3; 10,9,8;,
			3; 10,11,9;,
			3; 12,11,10;,
			3; 12,13,11;,
			3; 9,14,8;,
			3; 15,14,9;,
			3; 15,12,14;,
			3; 13,12,15;;
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
				Material silver {
					0.616300;0.616300;0.616300;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame post {
		Mesh mesh-post {
			16;
			-0.012931;-1.579022;-0.015025;,
			-0.012931;-0.448620;-0.015025;,
			-0.042692;-1.579022;-0.064557;,
			-0.042692;-0.448620;-0.064557;,
			-0.026910;-1.579022;0.041043;,
			-0.026910;-0.448620;0.041043;,
			-0.076441;-1.579022;0.070803;,
			-0.076441;-0.448620;0.070803;,
			-0.132509;-1.579022;0.056824;,
			-0.132509;-0.448620;0.056825;,
			-0.162270;-1.579022;0.007293;,
			-0.162270;-0.448620;0.007294;,
			-0.148290;-1.579022;-0.048775;,
			-0.148291;-0.448620;-0.048775;,
			-0.098760;-1.579022;-0.078535;,
			-0.098760;-0.448620;-0.078535;;

			22;
			3; 2,1,0;,
			3; 2,3,1;,
			3; 0,5,4;,
			3; 0,1,5;,
			3; 4,7,6;,
			3; 4,5,7;,
			3; 6,9,8;,
			3; 6,7,9;,
			3; 8,11,10;,
			3; 8,9,11;,
			3; 10,13,12;,
			3; 10,11,13;,
			3; 12,15,14;,
			3; 12,13,15;,
			3; 14,3,2;,
			3; 14,15,3;,
			3; 3,5,1;,
			3; 3,7,5;,
			3; 3,9,7;,
			3; 3,11,9;,
			3; 3,13,11;,
			3; 3,15,13;;
			MeshMaterialList {
				1;
			22;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material silver {
					0.616300;0.616300;0.616300;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame arm_rest {
		Mesh mesh-arm_rest {
			16;
			-0.776997;0.229619;0.455340;,
			-0.776997;0.304980;0.455340;,
			-0.588624;0.229619;0.452146;,
			-0.588624;0.304982;0.452146;,
			-0.792248;0.229619;-0.444144;,
			-0.792248;0.304982;-0.444144;,
			-0.603873;0.229619;-0.447337;,
			-0.603873;0.304982;-0.447337;,
			0.428593;0.229619;0.434899;,
			0.428593;0.304982;0.434899;,
			0.616966;0.229619;0.431705;,
			0.616966;0.304982;0.431705;,
			0.413342;0.229619;-0.464585;,
			0.413342;0.304982;-0.464585;,
			0.601717;0.229619;-0.467778;,
			0.601717;0.304982;-0.467778;;

			24;
			3; 2,1,0;,
			3; 2,3,1;,
			3; 0,5,4;,
			3; 0,1,5;,
			3; 4,7,6;,
			3; 4,5,7;,
			3; 6,3,2;,
			3; 6,7,3;,
			3; 3,5,1;,
			3; 3,7,5;,
			3; 4,2,0;,
			3; 6,2,4;,
			3; 10,9,8;,
			3; 10,11,9;,
			3; 8,13,12;,
			3; 8,9,13;,
			3; 12,15,14;,
			3; 12,13,15;,
			3; 14,11,10;,
			3; 14,15,11;,
			3; 11,13,9;,
			3; 11,15,13;,
			3; 12,10,8;,
			3; 14,10,12;;
			MeshMaterialList {
				1;
			24;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

	Frame back {
		Mesh mesh-back {
			25;
			-0.046985;0.276720;0.613488;,
			-0.137595;-0.306851;0.603718;,
			-0.680175;0.276720;0.609148;,
			0.555620;0.276720;0.591966;,
			-0.077380;0.860291;0.598931;,
			-0.802075;0.276720;0.532076;,
			-0.681453;-0.306851;0.533799;,
			-0.712932;0.276720;0.455194;,
			-0.711463;0.860291;0.541846;,
			-0.110331;0.276720;0.433672;,
			-0.019719;-0.306851;0.443442;,
			0.522860;0.276720;0.438010;,
			-0.079935;0.860291;0.448232;,
			0.644760;0.276720;0.515083;,
			0.524138;-0.306851;0.513358;,
			0.554149;0.860291;0.505314;,
			-0.078657;0.943658;0.523580;,
			0.525416;-0.279062;0.588709;,
			-0.680175;-0.279060;0.609148;,
			-0.682731;-0.279060;0.458449;,
			0.522860;-0.279062;0.438010;,
			0.525416;0.832502;0.588709;,
			-0.680175;0.832502;0.609150;,
			-0.682731;0.832502;0.458451;,
			0.522860;0.832502;0.438010;;

			42;
			3; 2,1,0;,
			3; 4,0,3;,
			3; 7,6,5;,
			3; 8,5,2;,
			3; 11,10,9;,
			3; 12,9,7;,
			3; 3,14,13;,
			3; 15,13,11;,
			3; 8,4,16;,
			3; 12,16,15;,
			3; 17,0,1;,
			3; 17,3,0;,
			3; 18,5,6;,
			3; 18,2,5;,
			3; 19,9,10;,
			3; 19,7,9;,
			3; 20,13,14;,
			3; 20,11,13;,
			3; 21,16,4;,
			3; 21,15,16;,
			3; 20,14,10;,
			3; 1,2,18;,
			3; 0,4,22;,
			3; 6,7,19;,
			3; 5,8,23;,
			3; 10,11,20;,
			3; 9,12,24;,
			3; 14,3,17;,
			3; 13,15,21;,
			3; 4,8,22;,
			3; 16,12,23;,
			3; 6,1,18;,
			3; 0,22,2;,
			3; 3,21,4;,
			3; 5,23,7;,
			3; 2,22,8;,
			3; 9,24,11;,
			3; 7,23,12;,
			3; 13,21,3;,
			3; 11,24,15;,
			3; 16,23,8;,
			3; 15,24,12;;
			MeshMaterialList {
				1;
			42;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

	Frame feet {
		Mesh mesh-feet {
			40;
			-0.503141;-1.729742;0.556133;,
			-0.472288;-1.579022;0.577762;,
			-0.472288;-1.729742;0.577762;,
			-0.503141;-1.579022;0.556133;,
			-0.451353;-1.579022;0.547165;,
			-0.451353;-1.729742;0.547165;,
			-0.481702;-1.729742;0.525894;,
			-0.481702;-1.579022;0.525894;,
			-0.724072;-1.729742;-0.179538;,
			-0.724072;-1.579022;-0.179538;,
			-0.713217;-1.729742;-0.214974;,
			-0.713217;-1.579022;-0.214974;,
			-0.748603;-1.729742;-0.226020;,
			-0.748603;-1.579022;-0.226020;,
			-0.759637;-1.729742;-0.189993;,
			-0.759637;-1.579022;-0.189993;,
			-0.117207;-1.579022;-0.663473;,
			-0.080151;-1.729742;-0.664099;,
			-0.117207;-1.729742;-0.663473;,
			-0.080151;-1.579022;-0.664099;,
			-0.080580;-1.729742;-0.701169;,
			-0.080580;-1.579022;-0.701169;,
			-0.118256;-1.729742;-0.700531;,
			-0.118256;-1.579022;-0.700531;,
			0.530572;-1.729742;-0.235854;,
			0.530572;-1.579022;-0.235854;,
			0.542621;-1.729742;-0.200804;,
			0.542621;-1.579022;-0.200804;,
			0.577743;-1.729742;-0.212667;,
			0.577743;-1.579022;-0.212667;,
			0.565493;-1.729742;-0.248300;,
			0.565493;-1.579022;-0.248300;,
			0.324058;-1.729745;0.512363;,
			0.324058;-1.579025;0.512363;,
			0.294447;-1.729745;0.534651;,
			0.294447;-1.579025;0.534651;,
			0.316585;-1.729745;0.564389;,
			0.316585;-1.579025;0.564389;,
			0.346688;-1.729745;0.541726;,
			0.346688;-1.579025;0.541726;;

			50;
			3; 2,1,0;,
			3; 1,3,0;,
			3; 5,4,2;,
			3; 4,1,2;,
			3; 0,7,6;,
			3; 0,3,7;,
			3; 6,4,5;,
			3; 6,7,4;,
			3; 10,9,8;,
			3; 10,11,9;,
			3; 12,11,10;,
			3; 12,13,11;,
			3; 8,9,14;,
			3; 9,15,14;,
			3; 14,15,12;,
			3; 15,13,12;,
			3; 18,17,16;,
			3; 16,17,19;,
			3; 17,20,19;,
			3; 19,20,21;,
			3; 16,22,18;,
			3; 23,22,16;,
			3; 23,20,22;,
			3; 21,20,23;,
			3; 26,25,24;,
			3; 26,27,25;,
			3; 28,27,26;,
			3; 28,29,27;,
			3; 24,25,30;,
			3; 25,31,30;,
			3; 30,31,28;,
			3; 31,29,28;,
			3; 34,33,32;,
			3; 34,35,33;,
			3; 36,35,34;,
			3; 36,37,35;,
			3; 32,33,38;,
			3; 33,39,38;,
			3; 38,39,36;,
			3; 39,37,36;,
			3; 18,20,17;,
			3; 18,22,20;,
			3; 26,30,28;,
			3; 26,24,30;,
			3; 36,32,38;,
			3; 36,34,32;,
			3; 0,5,2;,
			3; 0,6,5;,
			3; 14,10,8;,
			3; 14,12,10;;
			MeshMaterialList {
				1;
			50;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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

	Frame seat {
		Mesh mesh-seat {
			41;
			-0.837600;-0.373260;-0.016258;,
			-0.765744;-0.451635;0.007632;,
			-0.803499;-0.373260;-0.618814;,
			-0.755523;-0.373260;0.610426;,
			-0.792053;-0.294885;0.056315;,
			-0.125005;-0.373260;-0.666510;,
			-0.043978;-0.451635;-0.631693;,
			0.580323;-0.373260;-0.618157;,
			-0.097820;-0.294885;-0.606660;,
			0.662400;-0.373262;0.008526;,
			0.590545;-0.451635;-0.015364;,
			0.628299;-0.373262;0.611082;,
			0.616853;-0.294888;-0.064047;,
			-0.087601;-0.285843;-0.003866;,
			-0.077380;-0.294888;0.598931;,
			-0.087601;-0.460680;-0.003866;,
			-0.131222;-0.451635;0.623961;,
			-0.755523;-0.448620;0.610426;,
			-0.775966;-0.448620;-0.595162;,
			0.580323;-0.448620;-0.618157;,
			0.600764;-0.297900;0.587431;,
			-0.775966;-0.297900;-0.595162;,
			0.580323;-0.297900;-0.618157;,
			0.600764;-0.448622;0.587431;,
			-0.755523;-0.297900;0.610426;,
			-0.078657;-0.390218;0.523580;,
			-0.681453;-0.306851;0.533799;,
			-0.137595;-0.306851;0.603718;,
			0.524138;-0.306851;0.513358;,
			-0.019719;-0.306851;0.443442;,
			-0.682731;-0.279060;0.458449;,
			0.525416;-0.279062;0.588709;,
			-0.050197;-0.373262;0.658783;,
			-0.131222;-0.451635;0.623961;,
			-0.755523;-0.373260;0.610426;,
			0.628299;-0.373262;0.611082;,
			-0.077380;-0.294888;0.598931;,
			0.600764;-0.448622;0.587431;,
			-0.755523;-0.448620;0.610426;,
			-0.755523;-0.297900;0.610426;,
			0.600764;-0.297900;0.587431;;

			54;
			3; 2,1,0;,
			3; 4,0,3;,
			3; 7,6,5;,
			3; 8,5,2;,
			3; 11,10,9;,
			3; 12,9,7;,
			3; 4,14,13;,
			3; 8,13,12;,
			3; 16,1,15;,
			3; 15,6,10;,
			3; 17,0,1;,
			3; 17,3,0;,
			3; 18,5,6;,
			3; 18,2,5;,
			3; 19,9,10;,
			3; 19,7,9;,
			3; 20,13,14;,
			3; 20,12,13;,
			3; 18,15,1;,
			3; 19,10,6;,
			3; 1,2,18;,
			3; 0,4,21;,
			3; 6,7,19;,
			3; 5,8,22;,
			3; 10,11,23;,
			3; 9,12,20;,
			3; 14,4,24;,
			3; 13,8,21;,
			3; 1,16,17;,
			3; 6,15,18;,
			3; 0,21,2;,
			3; 3,24,4;,
			3; 5,22,7;,
			3; 2,21,8;,
			3; 9,20,11;,
			3; 7,22,12;,
			3; 13,21,4;,
			3; 12,22,8;,
			3; 15,23,16;,
			3; 10,23,15;,
			3; 27,26,25;,
			3; 25,29,28;,
			3; 30,25,26;,
			3; 29,25,30;,
			3; 25,31,27;,
			3; 28,31,25;,
			3; 34,33,32;,
			3; 36,32,35;,
			3; 37,32,33;,
			3; 37,35,32;,
			3; 33,34,38;,
			3; 32,36,39;,
			3; 32,39,34;,
			3; 35,40,36;;
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
				Material red {
					0.771400;0.000000;0.000000;1.000000;;
					136.430000;
					0.885700;0.000000;0.000000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame legs {
		Mesh mesh-legs {
			68;
			-0.163022;-1.579022;-0.007262;,
			-0.163022;-1.428302;-0.007262;,
			-0.151988;-1.579022;-0.043290;,
			-0.151988;-1.428302;-0.043290;,
			-0.759637;-1.579022;-0.189993;,
			-0.759639;-1.428302;-0.189992;,
			-0.748603;-1.579022;-0.226020;,
			-0.748603;-1.428302;-0.226019;,
			-0.114137;-1.579022;0.066815;,
			-0.114137;-1.428302;0.066815;,
			-0.144992;-1.579022;0.045187;,
			-0.144992;-1.428302;0.045187;,
			-0.472288;-1.579022;0.577762;,
			-0.472288;-1.428302;0.577762;,
			-0.503141;-1.579022;0.556133;,
			-0.503141;-1.428302;0.556133;,
			-0.028578;-1.579022;0.043213;,
			-0.028579;-1.428302;0.043213;,
			-0.058683;-1.579022;0.065875;,
			-0.058683;-1.428302;0.065875;,
			0.346688;-1.579025;0.541726;,
			0.346688;-1.428302;0.541726;,
			0.316585;-1.579025;0.564389;,
			0.316585;-1.428302;0.564389;,
			-0.024586;-1.579022;-0.045450;,
			-0.024586;-1.428302;-0.045450;,
			-0.012337;-1.579022;-0.009817;,
			-0.012337;-1.428302;-0.009817;,
			0.565493;-1.579022;-0.248300;,
			0.565493;-1.428302;-0.248300;,
			0.577743;-1.579022;-0.212667;,
			0.577743;-1.428302;-0.212667;,
			-0.107677;-1.579022;-0.076646;,
			-0.107677;-1.428302;-0.076646;,
			-0.070003;-1.579022;-0.077285;,
			-0.070003;-1.428302;-0.077285;,
			-0.118256;-1.579022;-0.700531;,
			-0.118256;-1.428302;-0.700531;,
			-0.080580;-1.579022;-0.701169;,
			-0.080580;-1.428302;-0.701169;,
			-0.163022;-1.579022;-0.007262;,
			-0.151988;-1.579022;-0.043290;,
			-0.759637;-1.579022;-0.189993;,
			-0.748603;-1.579022;-0.226020;,
			-0.114137;-1.579022;0.066815;,
			-0.144992;-1.579022;0.045187;,
			-0.472288;-1.579022;0.577762;,
			-0.503141;-1.579022;0.556133;,
			-0.028578;-1.579022;0.043213;,
			-0.058683;-1.579022;0.065875;,
			0.346688;-1.579025;0.541726;,
			0.316585;-1.579025;0.564389;,
			-0.024586;-1.579022;-0.045450;,
			-0.012337;-1.579022;-0.009817;,
			0.565493;-1.579022;-0.248300;,
			0.577743;-1.579022;-0.212667;,
			-0.107677;-1.579022;-0.076646;,
			-0.070003;-1.579022;-0.077285;,
			-0.118256;-1.579022;-0.700531;,
			-0.080580;-1.579022;-0.701169;,
			-0.012931;-1.579022;-0.015025;,
			-0.042692;-1.579022;-0.064557;,
			-0.026910;-1.579022;0.041043;,
			-0.076441;-1.579022;0.070803;,
			-0.132509;-1.579022;0.056824;,
			-0.162270;-1.579022;0.007293;,
			-0.148290;-1.579022;-0.048775;,
			-0.098760;-1.579022;-0.078535;;

			66;
			3; 2,1,0;,
			3; 2,3,1;,
			3; 0,5,4;,
			3; 0,1,5;,
			3; 4,7,6;,
			3; 4,5,7;,
			3; 6,3,2;,
			3; 6,7,3;,
			3; 3,5,1;,
			3; 3,7,5;,
			3; 10,9,8;,
			3; 10,11,9;,
			3; 8,13,12;,
			3; 8,9,13;,
			3; 12,15,14;,
			3; 12,13,15;,
			3; 14,11,10;,
			3; 14,15,11;,
			3; 11,13,9;,
			3; 11,15,13;,
			3; 18,17,16;,
			3; 18,19,17;,
			3; 16,21,20;,
			3; 16,17,21;,
			3; 20,23,22;,
			3; 20,21,23;,
			3; 22,19,18;,
			3; 22,23,19;,
			3; 19,21,17;,
			3; 19,23,21;,
			3; 26,25,24;,
			3; 26,27,25;,
			3; 24,29,28;,
			3; 24,25,29;,
			3; 28,31,30;,
			3; 28,29,31;,
			3; 30,27,26;,
			3; 30,31,27;,
			3; 27,29,25;,
			3; 27,31,29;,
			3; 34,33,32;,
			3; 34,35,33;,
			3; 32,37,36;,
			3; 32,33,37;,
			3; 36,39,38;,
			3; 36,37,39;,
			3; 38,35,34;,
			3; 38,39,35;,
			3; 35,37,33;,
			3; 35,39,37;,
			3; 42,41,40;,
			3; 43,41,42;,
			3; 46,45,44;,
			3; 47,45,46;,
			3; 50,49,48;,
			3; 51,49,50;,
			3; 54,53,52;,
			3; 55,53,54;,
			3; 58,57,56;,
			3; 59,57,58;,
			3; 62,61,60;,
			3; 63,61,62;,
			3; 64,61,63;,
			3; 65,61,64;,
			3; 66,61,65;,
			3; 67,61,66;;
			MeshMaterialList {
				1;
			66;
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
				0,
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
				Material silver {
					0.616300;0.616300;0.616300;1.000000;;
					60.000000;
					0.300000;0.300000;0.300000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

}
