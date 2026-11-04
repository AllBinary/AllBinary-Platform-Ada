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

limited with org.allbinary.graphics.opengles.OpenGLCapabilities_Package;
package org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References is
   type OpenGLCapabilities_Access is access all org.allbinary.graphics.opengles.OpenGLCapabilities_Package.OpenGLCapabilities'Class;
   type OpenGLCapabilities_Access_Array is array (Natural range <>) of OpenGLCapabilities_Access;
   type OpenGLCapabilities_Access_Array_Access is access all OpenGLCapabilities_Access_Array;
   type OpenGLCapabilities_Access_Array_Access_Array is array (Natural range <>) of OpenGLCapabilities_Access_Array_Access;
   type OpenGLCapabilities_Access_Array_Access_Array_Access is access all OpenGLCapabilities_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References;

with org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package_References;

package org.allbinary.graphics.opengles.OpenGLCapabilities_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   use type GL10_Access;
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   use type GL10_Access_Array;
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   use type GL10_Access_Array_Access;
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   use type GL10_Access_Array_Access_Array;
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   use type GL10_Access_Array_Access_Array_Access;
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype OpenGLFeature_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access;
   use type OpenGLFeature_Access;
   subtype OpenGLFeature_Access_Array is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array;
   use type OpenGLFeature_Access_Array;
   subtype OpenGLFeature_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access;
   use type OpenGLFeature_Access_Array_Access;
   subtype OpenGLFeature_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access_Array;
   use type OpenGLFeature_Access_Array_Access_Array;
   subtype OpenGLFeature_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeature_Package_References.OpenGLFeature_Access_Array_Access_Array_Access;
   use type OpenGLFeature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLCapabilities_Access is org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.OpenGLCapabilities_Access;
   function "=" (Left, Right : OpenGLCapabilities_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References."=";
   subtype OpenGLCapabilities_Access_Array is org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.OpenGLCapabilities_Access_Array;
   function "=" (Left, Right : OpenGLCapabilities_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References."=";
   subtype OpenGLCapabilities_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.OpenGLCapabilities_Access_Array_Access;
   function "=" (Left, Right : OpenGLCapabilities_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References."=";
   subtype OpenGLCapabilities_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.OpenGLCapabilities_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLCapabilities_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References."=";
   subtype OpenGLCapabilities_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.OpenGLCapabilities_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLCapabilities_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References."=";

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
   function isInitialized (This : in out OpenGLCapabilities) return Boolean;
   procedure requireInitialization (This : in out OpenGLCapabilities);
   procedure initCapabilities (This : in out OpenGLCapabilities; gl_Param : access GL10_Package.GL10'Class);
   function isExtension (This : in out OpenGLCapabilities; gameFeature_Param : access OpenGLFeature_Package.OpenGLFeature'Class) return Boolean;
   procedure isExtension (This : in out OpenGLCapabilities; gameFeature_Param : access OpenGLFeature_Package.OpenGLFeature'Class);
   function isGlExtensionDrawTexture (This : in out OpenGLCapabilities) return Boolean;
   function isGlExtensionGPUShader100 (This : in out OpenGLCapabilities) return Boolean;
   function isGlExtensionGPUShader4 (This : in out OpenGLCapabilities) return Boolean;
   function getGlVersion (This : in out OpenGLCapabilities) return Unbounded_String;
   function getGlVersionString (This : in out OpenGLCapabilities) return Unbounded_String;
   function getGlShaderVersion (This : in out OpenGLCapabilities) return Unbounded_String;
   function isGlThreedDrawTexture (This : in out OpenGLCapabilities) return Boolean;
   function getGlRenderer (This : in out OpenGLCapabilities) return Unbounded_String;
   function isVertexBufferObjectSupport (This : in out OpenGLCapabilities) return Boolean;
   function isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer) return Boolean;
   procedure isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer);
   function toString (This : in out OpenGLCapabilities) return Unbounded_String;

end org.allbinary.graphics.opengles.OpenGLCapabilities_Package;


