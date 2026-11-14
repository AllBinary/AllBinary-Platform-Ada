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

with AllBinary_Java;
limited with org.allbinary.graphics.opengles.OpenGLCapabilities_Package;
package org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References is
   type OpenGLCapabilities_Access is access all org.allbinary.graphics.opengles.OpenGLCapabilities_Package.OpenGLCapabilities'Class;
   type OpenGLCapabilities_Access_Array is array (Natural range <>) of OpenGLCapabilities_Access;
   type OpenGLCapabilities_Access_Array_Access is access all OpenGLCapabilities_Access_Array;
   type OpenGLCapabilities_Access_Array_Access_Array is array (Natural range <>) of OpenGLCapabilities_Access_Array_Access;
   type OpenGLCapabilities_Access_Array_Access_Array_Access is access all OpenGLCapabilities_Access_Array_Access_Array;
   type OpenGLCapabilities_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLCapabilities_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLCapabilities_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLCapabilities_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLCapabilities_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLCapabilities_Access_Array_Access is (if Value /= null and then Value.all in OpenGLCapabilities_Access_Array_Object'Class then OpenGLCapabilities_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLCapabilities_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLCapabilities_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLCapabilities_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLCapabilities_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLCapabilities_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLCapabilities_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLCapabilities_Access_Array_Access_Array_Object'Class then OpenGLCapabilities_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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

package org.allbinary.graphics.opengles.OpenGLCapabilities_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLCapabilities_Access is org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.OpenGLCapabilities_Access;
   function "=" (Left, Right : OpenGLCapabilities_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References."=";
   subtype OpenGLCapabilities_Access_Array is org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.OpenGLCapabilities_Access_Array;
   function "=" (Left, Right : OpenGLCapabilities_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References."=";
   subtype OpenGLCapabilities_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.OpenGLCapabilities_Access_Array_Access;
   function "=" (Left, Right : OpenGLCapabilities_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References."=";
   function Java_Box (Value : OpenGLCapabilities_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.Java_Box;
   function Java_Unbox_OpenGLCapabilities_Access_Array (Value : access Java_Object'Class) return OpenGLCapabilities_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.Java_Unbox_OpenGLCapabilities_Access_Array;
   subtype OpenGLCapabilities_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.OpenGLCapabilities_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLCapabilities_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References."=";
   subtype OpenGLCapabilities_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.OpenGLCapabilities_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLCapabilities_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References."=";
   function Java_Box (Value : OpenGLCapabilities_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.Java_Box;
   function Java_Unbox_OpenGLCapabilities_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLCapabilities_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLCapabilities_Package_References.Java_Unbox_OpenGLCapabilities_Access_Array_Access_Array;

   type OpenGLCapabilities is new Java_Object with record
      CUSTOM_GL_SURFACE_VIEW : Boolean;
      VERSION_1_0 : Unbounded_String;
      VERSION_1_1 : Unbounded_String;
      VERSION_2_0 : Unbounded_String;
      VERSION_3_0 : Unbounded_String;
      VERSION_3_1 : Unbounded_String;
      VERSION_3_2 : Unbounded_String;
      VERSION_HIGHER_THAN_EXISTS : Unbounded_String;
      glVersion : Unbounded_String;
      shaderVersion : Integer;
      glInstanceVersion : Unbounded_String;
      maxTextureSize : Integer;
   end record;
   instance : OpenGLCapabilities_Access;

   procedure Initialize (This : in out OpenGLCapabilities'Class);
   function Create return OpenGLCapabilities_Access;
   function getInstance return OpenGLCapabilities_Access;
   function isInitialized (This : in out OpenGLCapabilities) return Boolean;
   procedure initCapabilities (This : in out OpenGLCapabilities; gl_Param : access Java_Object'Class);
   function isGlExtensionDrawTexture (This : in out OpenGLCapabilities) return Boolean;
   function getGlVersion (This : in out OpenGLCapabilities) return Unbounded_String;
   function isVertexBufferObjectSupport (This : in out OpenGLCapabilities) return Boolean;
   function isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer) return Boolean;
   procedure isTextureSizeValid (This : in out OpenGLCapabilities; widthAndHeight : Integer);
   procedure initCapabilities (This : in out OpenGLCapabilities; Value : Unbounded_String);

end org.allbinary.graphics.opengles.OpenGLCapabilities_Package;


