-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.graphics.opengles.OpenGLVersionValidator_Package;
package org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References is
   type OpenGLVersionValidator_Access is access all org.allbinary.graphics.opengles.OpenGLVersionValidator_Package.OpenGLVersionValidator'Class;
   type OpenGLVersionValidator_Access_Array is array (Natural range <>) of OpenGLVersionValidator_Access;
   type OpenGLVersionValidator_Access_Array_Access is access all OpenGLVersionValidator_Access_Array;
   type OpenGLVersionValidator_Access_Array_Access_Array is array (Natural range <>) of OpenGLVersionValidator_Access_Array_Access;
   type OpenGLVersionValidator_Access_Array_Access_Array_Access is access all OpenGLVersionValidator_Access_Array_Access_Array;
   type OpenGLVersionValidator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLVersionValidator_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLVersionValidator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLVersionValidator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLVersionValidator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLVersionValidator_Access_Array_Access is (if Value /= null and then Value.all in OpenGLVersionValidator_Access_Array_Object'Class then OpenGLVersionValidator_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLVersionValidator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLVersionValidator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLVersionValidator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLVersionValidator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLVersionValidator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLVersionValidator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLVersionValidator_Access_Array_Access_Array_Object'Class then OpenGLVersionValidator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References;

with org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.opengles.shader.ShaderComposite_Package;
with org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References;

package org.allbinary.graphics.opengles.OpenGLVersionValidator_Package is

   package ShaderComposite_Package renames Standard.org.allbinary.graphics.opengles.shader.ShaderComposite_Package;
   package Reference_Types is
   subtype ShaderComposite_Access is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access;
   use type ShaderComposite_Access;
   subtype ShaderComposite_Access_Array is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array;
   use type ShaderComposite_Access_Array;
   subtype ShaderComposite_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array_Access;
   use type ShaderComposite_Access_Array_Access;
   subtype ShaderComposite_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array_Access_Array;
   use type ShaderComposite_Access_Array_Access_Array;
   subtype ShaderComposite_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderComposite_Package_References.ShaderComposite_Access_Array_Access_Array_Access;
   use type ShaderComposite_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLVersionValidator_Access is org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References.OpenGLVersionValidator_Access;
   function "=" (Left, Right : OpenGLVersionValidator_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References."=";
   subtype OpenGLVersionValidator_Access_Array is org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References.OpenGLVersionValidator_Access_Array;
   function "=" (Left, Right : OpenGLVersionValidator_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References."=";
   subtype OpenGLVersionValidator_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References.OpenGLVersionValidator_Access_Array_Access;
   function "=" (Left, Right : OpenGLVersionValidator_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References."=";
   function Java_Box (Value : OpenGLVersionValidator_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References.Java_Box;
   function Java_Unbox_OpenGLVersionValidator_Access_Array (Value : access Java_Object'Class) return OpenGLVersionValidator_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References.Java_Unbox_OpenGLVersionValidator_Access_Array;
   subtype OpenGLVersionValidator_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References.OpenGLVersionValidator_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLVersionValidator_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References."=";
   subtype OpenGLVersionValidator_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References.OpenGLVersionValidator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLVersionValidator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References."=";
   function Java_Box (Value : OpenGLVersionValidator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References.Java_Box;
   function Java_Unbox_OpenGLVersionValidator_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLVersionValidator_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.OpenGLVersionValidator_Package_References.Java_Unbox_OpenGLVersionValidator_Access_Array_Access_Array;

   type OpenGLVersionValidator is new Java_Object with record
      EGL_CONTEXT_CLIENT_VERSION_VALUE : Integer;
   end record;
   instance : OpenGLVersionValidator_Access;

   procedure Initialize (This : in out OpenGLVersionValidator'Class);
   function Create return OpenGLVersionValidator_Access;
   function getInstance return OpenGLVersionValidator_Access;
   function isGL31OrHigher (This : in out OpenGLVersionValidator) return Boolean;
   function isAvailable (This : in out OpenGLVersionValidator; glVersionRequired : Unbounded_String) return Boolean;
   procedure isAvailable (This : in out OpenGLVersionValidator; glVersionRequired : Unbounded_String);
   procedure setShaderComposite (This : in out OpenGLVersionValidator; shaderComposite_Param : access ShaderComposite_Package.ShaderComposite'Class; anyType_Param : access Java_Object'Class);

end org.allbinary.graphics.opengles.OpenGLVersionValidator_Package;


