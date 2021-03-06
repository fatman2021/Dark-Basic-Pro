xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
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

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
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

Frame frm-Spistol {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
 Mesh Spistol {
  1;
  0.0;0.0;0.0;;
  1;
  3;0,0,0;;
  MeshNormals {
  1;
  1.0;1.0;1.0;;
  1;
  3;0,0,0;,
  }
 }
Frame frm-grip {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh grip {
 8;
 -0.050942;0.050942;-0.242442;,
 0.050942;-0.543065;0.263389;,
 -0.050942;-0.543065;0.263389;,
 0.050942;0.050942;0.050942;,
 -0.050942;0.050942;0.050942;,
 -0.050942;-0.543065;-0.003433;,
 0.050942;0.050942;-0.242442;,
 0.050942;-0.543065;-0.003433;;

 12;
 3;5,6,7;,
 3;2,3,4;,
 3;1,5,7;,
 3;7,3,1;,
 3;2,4,5;,
 3;5,4,0;,
 3;3,7,6;,
 3;5,1,2;,
 3;3,2,1;,
 3;6,5,0;,
 3;0,4,6;,
 3;4,3,6;;

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
  0;
Material {
 0.500000;0.500000;0.500000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "spistol.bmp";
 }
 }
}
 MeshNormals {
  8;
  -1.000000;0.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;0.336760;0.941590;,
  0.000000;0.336760;0.941590;,
  0.000000;0.336760;0.941590;,
  0.000000;-0.373283;-0.927717;,
  0.000000;-0.373283;-0.927717;,
  0.000000;-0.373283;-0.927717;;

  12;
  3;5,6,7;,
  3;2,3,4;,
  3;1,5,7;,
  3;7,3,1;,
  3;2,4,5;,
  3;5,4,0;,
  3;3,7,6;,
  3;5,1,2;,
  3;3,2,1;,
  3;6,5,0;,
  3;0,4,6;,
  3;4,3,6;;
 }
 MeshTextureCoords { 
 8;
 0.428571;0.402778;,
 0.100000;0.884259;,
 0.100000;0.884259;,
 0.237999;0.402778;,
 0.237999;0.402778;,
 0.273319;0.884259;,
 0.428571;0.402778;,
 0.273319;0.884259;;
 }
}
}
Frame frm-barrel {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh barrel {
 18;
 0.000000;0.104393;-1.370590;,
 -0.061166;0.222626;-1.370590;,
 0.061166;0.222626;-1.370590;,
 0.061166;0.423518;-1.370590;,
 0.000000;0.305284;-1.370590;,
 -0.061166;0.423518;-1.370590;,
 -0.061166;0.423518;-1.370590;,
 -0.061166;0.423518;-1.147040;,
 0.000000;0.305284;-1.370590;,
 0.061166;0.423518;-1.370590;,
 0.061166;0.423518;-1.147040;,
 0.000000;0.305284;-1.147040;,
 0.000000;0.104393;-1.370590;,
 0.061166;0.222626;-1.370590;,
 -0.061166;0.222626;-1.370590;,
 -0.061166;0.222626;-1.147040;,
 0.000000;0.104393;-1.147040;,
 0.061166;0.222626;-1.147040;;

 10;
 3;15,16,17;,
 4;13,14,15,17;,
 4;16,15,14,12;,
 4;8,9,10,11;,
 3;7,11,10;,
 4;7,10,9,6;,
 4;11,7,6,8;,
 4;12,13,17,16;,
 3;3,4,5;,
 3;0,1,2;;

 MeshMaterialList {
  2;
  10;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1;
Material {
 0.411765;0.411765;0.411765;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "spistol.bmp";
 }
 }
Material {
 0.500000;0.500000;0.500000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "spistol.bmp";
 }
 }
}
 MeshNormals {
  18;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.888186;-0.459485;0.000000;,
  0.888186;-0.459485;0.000000;,
  0.888186;-0.459485;0.000000;,
  0.888186;-0.459485;0.000000;,
  -0.888184;-0.459488;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;;

  10;
  3;15,16,17;,
  4;13,14,15,17;,
  4;16,15,14,12;,
  4;8,9,10,11;,
  3;7,11,10;,
  4;7,10,9,6;,
  4;11,7,6,8;,
  4;12,13,17,16;,
  3;3,4,5;,
  3;0,1,2;;
 }
 MeshTextureCoords { 
 18;
 0.932143;0.962963;,
 0.932143;0.851473;,
 0.932143;0.851473;,
 0.932143;0.662037;,
 0.932143;0.773528;,
 0.932143;0.662037;,
 0.932143;0.662037;,
 0.785714;0.662037;,
 0.932143;0.773528;,
 0.932143;0.662037;,
 0.785714;0.662037;,
 0.785714;0.773528;,
 0.932143;0.962963;,
 0.932143;0.851473;,
 0.932143;0.851473;,
 0.785714;0.851473;,
 0.785714;0.962963;,
 0.785714;0.851473;;
 }
}
}
Frame frm-body {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh body {
 12;
 -0.140037;-0.233161;-0.741728;,
 0.140037;-0.233161;-0.741728;,
 0.140037;0.050942;-0.741728;,
 0.140037;0.050942;0.285577;,
 0.140037;0.503137;0.432075;,
 -0.140037;0.050942;-0.741728;,
 -0.140037;0.050942;0.285577;,
 0.140037;-0.233161;-1.147040;,
 -0.140037;-0.233161;-1.147040;,
 -0.140037;0.503137;0.432075;,
 0.140037;0.503137;-1.147040;,
 -0.140037;0.503137;-1.147040;;

 20;
 3;9,10,11;,
 3;10,7,8;,
 3;5,6,9;,
 3;9,3,4;,
 3;2,7,10;,
 3;5,2,3;,
 3;3,9,6;,
 3;10,9,4;,
 3;8,7,1;,
 3;3,6,5;,
 3;5,0,1;,
 3;8,0,5;,
 3;2,1,7;,
 3;11,8,5;,
 3;5,9,11;,
 3;4,3,2;,
 3;2,10,4;,
 3;8,11,10;,
 3;1,0,8;,
 3;1,2,5;;

 MeshMaterialList {
  1;
  20;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 0.700000;0.700000;0.700000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "spistol.bmp";
 }
 }
}
 MeshNormals {
  12;
  0.000000;0.000000;1.000000;,
  0.000000;-1.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;-0.308200;0.951321;,
  0.000000;-0.308200;0.951321;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;;

  20;
  3;9,10,11;,
  3;10,7,8;,
  3;5,6,9;,
  3;9,3,4;,
  3;2,7,10;,
  3;5,2,3;,
  3;3,9,6;,
  3;10,9,4;,
  3;8,7,1;,
  3;3,6,5;,
  3;5,0,1;,
  3;8,0,5;,
  3;2,1,7;,
  3;11,8,5;,
  3;5,9,11;,
  3;4,3,2;,
  3;2,10,4;,
  3;8,11,10;,
  3;1,0,8;,
  3;1,2,5;;
 }
 MeshTextureCoords { 
 12;
 0.726770;0.583333;,
 0.726770;0.583333;,
 0.726770;0.379689;,
 0.115711;0.379689;,
 0.028571;0.055556;,
 0.726770;0.379689;,
 0.115711;0.379689;,
 0.967857;0.583333;,
 0.967857;0.583333;,
 0.028571;0.055556;,
 0.967857;0.055556;,
 0.967857;0.055556;;
 }
}
}
}
