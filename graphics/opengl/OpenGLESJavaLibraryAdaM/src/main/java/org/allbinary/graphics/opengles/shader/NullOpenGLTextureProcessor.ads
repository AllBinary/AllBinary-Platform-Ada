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
limited with org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package;
package org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References is
   type NullOpenGLTextureProcessor_Access is access all org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package.NullOpenGLTextureProcessor'Class;
   type NullOpenGLTextureProcessor_Access_Array is array (Natural range <>) of NullOpenGLTextureProcessor_Access;
   type NullOpenGLTextureProcessor_Access_Array_Access is access all NullOpenGLTextureProcessor_Access_Array;
   type NullOpenGLTextureProcessor_Access_Array_Access_Array is array (Natural range <>) of NullOpenGLTextureProcessor_Access_Array_Access;
   type NullOpenGLTextureProcessor_Access_Array_Access_Array_Access is access all NullOpenGLTextureProcessor_Access_Array_Access_Array;
   type NullOpenGLTextureProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullOpenGLTextureProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : NullOpenGLTextureProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullOpenGLTextureProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullOpenGLTextureProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullOpenGLTextureProcessor_Access_Array_Access is (if Value /= null and then Value.all in NullOpenGLTextureProcessor_Access_Array_Object'Class then NullOpenGLTextureProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type NullOpenGLTextureProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullOpenGLTextureProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullOpenGLTextureProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullOpenGLTextureProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullOpenGLTextureProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullOpenGLTextureProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullOpenGLTextureProcessor_Access_Array_Access_Array_Object'Class then NullOpenGLTextureProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References;

with org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package;
with org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References;

package org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package is

   package Reference_Types is
   subtype OpenGLObject3dProcessor_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access;
   use type OpenGLObject3dProcessor_Access;
   subtype OpenGLObject3dProcessor_Access_Array is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array;
   use type OpenGLObject3dProcessor_Access_Array;
   subtype OpenGLObject3dProcessor_Access_Array_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access;
   use type OpenGLObject3dProcessor_Access_Array_Access;
   subtype OpenGLObject3dProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access_Array;
   use type OpenGLObject3dProcessor_Access_Array_Access_Array;
   subtype OpenGLObject3dProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor_Package_References.OpenGLObject3dProcessor_Access_Array_Access_Array_Access;
   use type OpenGLObject3dProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullOpenGLTextureProcessor_Access is org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References.NullOpenGLTextureProcessor_Access;
   function "=" (Left, Right : NullOpenGLTextureProcessor_Access) return Boolean renames org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References."=";
   subtype NullOpenGLTextureProcessor_Access_Array is org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References.NullOpenGLTextureProcessor_Access_Array;
   function "=" (Left, Right : NullOpenGLTextureProcessor_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References."=";
   subtype NullOpenGLTextureProcessor_Access_Array_Access is org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References.NullOpenGLTextureProcessor_Access_Array_Access;
   function "=" (Left, Right : NullOpenGLTextureProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References."=";
   function Java_Box (Value : NullOpenGLTextureProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References.Java_Box;
   function Java_Unbox_NullOpenGLTextureProcessor_Access_Array (Value : access Java_Object'Class) return NullOpenGLTextureProcessor_Access_Array_Access renames org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References.Java_Unbox_NullOpenGLTextureProcessor_Access_Array;
   subtype NullOpenGLTextureProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References.NullOpenGLTextureProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : NullOpenGLTextureProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References."=";
   subtype NullOpenGLTextureProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References.NullOpenGLTextureProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullOpenGLTextureProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References."=";
   function Java_Box (Value : NullOpenGLTextureProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References.Java_Box;
   function Java_Unbox_NullOpenGLTextureProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return NullOpenGLTextureProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package_References.Java_Unbox_NullOpenGLTextureProcessor_Access_Array_Access_Array;

   type NullOpenGLTextureProcessor is new Java_Object with null record;
   instance : OpenGLObject3dProcessor_Access;

   procedure Initialize (This : in out NullOpenGLTextureProcessor'Class);
   function Create return NullOpenGLTextureProcessor_Access;
   function getInstance return OpenGLObject3dProcessor_Access;

end org.allbinary.graphics.opengles.shader.NullOpenGLTextureProcessor_Package;


