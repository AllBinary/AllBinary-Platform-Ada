--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.khronos.opengles.GL11_Package; use javax.microedition.khronos.opengles.GL11_Package;
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package; use org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package;
with org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory_Package; use org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory_Package;
with org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package; use org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.tokens.Tokenizer_Package; use org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.graphics.opengles.OpenGLCapabilities_Package is

   package AndroidUtil_Package renames org.allbinary.AndroidUtil_Package;
   package OpenGLESGL10ImageFactory_Package renames org.allbinary.image.opengles.OpenGLESGL10ImageFactory_Package;
   package OpenGLESGL11VBOImageFactory_Package renames org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory_Package;
   package OpenGLImageSpecificFactory_Package renames org.allbinary.image.opengles.OpenGLImageSpecificFactory_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package Tokenizer_Package renames org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package Features_Package renames org.allbinary.game.configuration.feature.Features_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;

   type OpenGLCapabilities is tagged;
   type OpenGLCapabilities_Access is access all OpenGLCapabilities'Class;
   type OpenGLCapabilities_Access_Array is array (Natural range <>) of OpenGLCapabilities_Access;
   type OpenGLCapabilities_Access_Array_Access is access all OpenGLCapabilities_Access_Array;

   type OpenGLCapabilities is new Java_Object with record
      logUtil : LogUtil_Access;
      CUSTOM_GL_SURFACE_VIEW : Boolean;
      stringUtil : StringUtil_Access;
      initialized : Boolean;
      glVersionString : Unbounded_String;
      glShaderVersionString : Unbounded_String;
      shaderVersion : Integer;
      glRenderer : Unbounded_String;
      glVendor : Unbounded_String;
      glExtensions : Unbounded_String;
      possiblyAccelerated : Boolean;
      acceleratedString : Unbounded_String;
      maxTextureSize : Integer;
      VERSION_1_0 : Unbounded_String;
      VERSION_1_1 : Unbounded_String;
      VERSION_2_0 : Unbounded_String;
      VERSION_3_0 : Unbounded_String;
      VERSION_3_1 : Unbounded_String;
      VERSION_3_2 : Unbounded_String;
      VERSION_HIGHER_THAN_EXISTS : Unbounded_String;
      VERSION_UNK : Unbounded_String;
      GL_EXT_GPU_SHADER_100 : Unbounded_String;
      GL_EXT_GPU_SHADER4 : Unbounded_String;
      glVersion : Unbounded_String;
      glInstanceVersion : Unbounded_String;
      glExtensionDrawTexture : Boolean;
      glThreedDrawTexture : Boolean;
      glExtensionGPUShader4 : Boolean;
      glExtensionGPUShader100 : Boolean;
      vertexBufferObjectSupport : Boolean;
   end record;
   instance : OpenGLCapabilities_Access;

   procedure Initialize (This : in out OpenGLCapabilities'Class);
   function Create return OpenGLCapabilities_Access;
   function getInstance return OpenGLCapabilities_Access;
   procedure getInstance;
   function isInitialized (This : in out OpenGLCapabilities) return Boolean;
   procedure isInitialized (This : in out OpenGLCapabilities);
   procedure requireInitialization (This : in out OpenGLCapabilities);
   procedure initCapabilities (This : in out OpenGLCapabilities; gl : GL10_Access);
   function isExtension (This : in out OpenGLCapabilities; gameFeature : OpenGLFeature_Access) return Boolean;
   procedure isExtension (This : in out OpenGLCapabilities; gameFeature : OpenGLFeature_Access);
   function isGlExtensionDrawTexture (This : in out OpenGLCapabilities) return Boolean;
   procedure isGlExtensionDrawTexture (This : in out OpenGLCapabilities);
   function isGlExtensionGPUShader100 (This : in out OpenGLCapabilities) return Boolean;
   procedure isGlExtensionGPUShader100 (This : in out OpenGLCapabilities);
   function isGlExtensionGPUShader4 (This : in out OpenGLCapabilities) return Boolean;
   procedure isGlExtensionGPUShader4 (This : in out OpenGLCapabilities);
   function getGlVersion (This : in out OpenGLCapabilities) return Unbounded_String;
   procedure getGlVersion (This : in out OpenGLCapabilities);
   function getGlVersionString (This : in out OpenGLCapabilities) return Unbounded_String;
   procedure getGlVersionString (This : in out OpenGLCapabilities);
   function getGlShaderVersion (This : in out OpenGLCapabilities) return Unbounded_String;
   procedure getGlShaderVersion (This : in out OpenGLCapabilities);
   function isGlThreedDrawTexture (This : in out OpenGLCapabilities) return Boolean;
   procedure isGlThreedDrawTexture (This : in out OpenGLCapabilities);
   function getGlRenderer (This : in out OpenGLCapabilities) return Unbounded_String;
   procedure getGlRenderer (This : in out OpenGLCapabilities);
   function isVertexBufferObjectSupport (This : in out OpenGLCapabilities) return Boolean;
   procedure isVertexBufferObjectSupport (This : in out OpenGLCapabilities);
   function isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer) return Boolean;
   procedure isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer);
   function toString (This : in out OpenGLCapabilities) return Unbounded_String;
   procedure toString (This : in out OpenGLCapabilities);

end org.allbinary.graphics.opengles.OpenGLCapabilities_Package;


