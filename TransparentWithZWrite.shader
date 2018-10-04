Shader "Slashrawr/TransparentWithZWrite"
{
	Properties
	{
		_Color("Color (RGBA)", Color) = (0, 0, 0, 1) //Used for debugging
	}
	SubShader
	{
		Tags { "Queue"="Geometry+500"  "RenderType"="Transparent"}
		LOD 100
		Blend SrcAlpha OneMinusSrcAlpha

		ZWrite On //Add pixels to the z-buffer to prevent other pixel from being drawn on it
		ZTest Less //Only draw when when it's closer
		Offset -1, -1 //Prevent z-fighting

		Pass 
		{
			Color[_Color]
			Cull Off //Disable culling so the surface always shows. This might be situational.
		}
	}
}