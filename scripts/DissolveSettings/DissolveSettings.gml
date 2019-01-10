/// @description DissolveSettings(MaskSprite,MaskFrame,InnerColour,OuterColour,EdgeThickness)
/// @param MaskSprite
/// @param MaskFrame
/// @param InnerColour
/// @param OuterColour
/// @param EdgeThickness
//MaskSprite - black and white dissolve pattern. Dimensions must match the sprite to be dissolved!
//MaskFrame - Mask sub-image index
//InnerColour - eg: c_red, or make_colour_rgb())
//OuterColour - eg: c_red, or make_colour_rgb())
//EdgeThickness - from 0 (no colour edge) to 0.99 (full sprite)

//Call in the create event of an object, or when you need to change the colours, mask or thickness of the dissolve

_Dissolve_Shader = shDissolve; //Incase you want to change the name of the shader resource

_u_DissolveTex = shader_get_sampler_index(_Dissolve_Shader,"DissolveTex");
_u_Dissolve = shader_get_uniform(_Dissolve_Shader,"Dissolve");
_u_DissolveUV = shader_get_uniform(_Dissolve_Shader,"DissolveUV"); 
_u_DefaultUV = shader_get_uniform(_Dissolve_Shader,"DefaultUV"); 
_u_DissolveEdge = shader_get_uniform(_Dissolve_Shader,"Edge");
_u_DissolveC1 = shader_get_uniform(_Dissolve_Shader,"C1");
_u_DissolveC2 = shader_get_uniform(_Dissolve_Shader,"C2");

_DissolveTex = sprite_get_texture(argument0,argument1);
_DissolveTexUvs = sprite_get_uvs(argument0,argument1);

_DissolveC1[0] = colour_get_red(argument2)/255;
_DissolveC1[1] = colour_get_green(argument2)/255;
_DissolveC1[2] = colour_get_blue(argument2)/255;

_DissolveC2[0] = colour_get_red(argument3)/255;
_DissolveC2[1] = colour_get_green(argument3)/255;
_DissolveC2[2] = colour_get_blue(argument3)/255;

_DissolveEdge = argument4;


