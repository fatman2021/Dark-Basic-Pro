xof 0302txt 0064
//  DV7224 Copyright Viewpoint Datalabs Intl., Inc.
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
	Frame cover {
		Mesh mesh-cover {
			4;
			13.970000;-1.905000;10.160003;,
			-13.970000;-1.905000;10.160006;,
			13.970000;-1.905000;-10.160005;,
			-13.970000;-1.905000;-10.160005;;

			4;
			3; 2,1,0;,
			3; 0,3,2;,
			3; 2,3,1;,
			3; 0,1,3;;
			MeshMaterialList {
				1;
			4;
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

	Frame pages_smooth {
		Mesh mesh-pages_smooth {
			16;
			-11.430000;1.905000;8.890005;,
			-12.700000;-1.905000;8.890005;,
			-11.430000;1.905000;-8.890004;,
			-2.540000;1.905000;8.890003;,
			0.000000;-0.635000;8.890003;,
			-2.540000;1.905000;-8.890004;,
			2.540000;1.905000;8.890003;,
			0.000000;-0.635000;8.890003;,
			-0.000001;-0.635000;-8.890004;,
			11.430000;1.905000;8.890003;,
			2.540000;1.905000;-8.890004;,
			12.700000;-1.905000;8.890003;,
			12.700000;-1.905000;-8.890004;,
			-12.700000;-1.905000;-8.890004;,
			-0.000001;-0.635000;-8.890004;,
			11.430000;1.905000;-8.890004;;

			12;
			3; 2,1,0;,
			3; 2,0,3;,
			3; 5,3,4;,
			3; 8,7,6;,
			3; 10,6,9;,
			3; 12,9,11;,
			3; 2,13,1;,
			3; 3,5,2;,
			3; 4,14,5;,
			3; 6,10,8;,
			3; 9,15,10;,
			3; 12,15,9;;
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
				Material archwhite {
					0.995900;0.995900;0.995900;1.000000;;
					10.000000;
					0.500000;0.500000;0.500000;;
					0.000000;0.000000;0.000000;;
				}
				}
		}
	}

	Frame pages_flat {
		Mesh mesh-pages_flat {
			20;
			0.000000;-1.905000;8.890003;,
			-11.430000;1.905000;8.890005;,
			-2.540000;1.905000;8.890003;,
			-11.430000;1.905000;-8.890004;,
			-0.000001;-1.905000;-8.890004;,
			-0.000001;-0.635000;-8.890004;,
			11.430000;1.905000;8.890003;,
			0.000000;-1.905000;8.890003;,
			0.000000;-0.635000;8.890003;,
			-0.000001;-0.635000;-8.890004;,
			12.700000;-1.905000;-8.890004;,
			11.430000;1.905000;-8.890004;,
			0.000000;-0.635000;8.890003;,
			-12.700000;-1.905000;8.890005;,
			-2.540000;1.905000;-8.890004;,
			-12.700000;-1.905000;-8.890004;,
			2.540000;1.905000;8.890003;,
			12.700000;-1.905000;8.890003;,
			2.540000;1.905000;-8.890004;,
			-0.000001;-1.905000;-8.890004;;

			12;
			3; 2,1,0;,
			3; 5,4,3;,
			3; 8,7,6;,
			3; 11,10,9;,
			3; 0,12,2;,
			3; 1,13,0;,
			3; 3,14,5;,
			3; 4,15,3;,
			3; 6,16,8;,
			3; 7,17,6;,
			3; 9,18,11;,
			3; 10,19,9;;
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
