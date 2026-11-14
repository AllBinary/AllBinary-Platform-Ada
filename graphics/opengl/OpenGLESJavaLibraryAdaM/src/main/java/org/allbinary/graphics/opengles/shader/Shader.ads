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
limited with org.allbinary.graphics.opengles.shader.Shader_Package;
package org.allbinary.graphics.opengles.shader.Shader_Package_References is
   type Shader_Access is access all org.allbinary.graphics.opengles.shader.Shader_Package.Shader'Class;
   type Shader_Access_Array is array (Natural range <>) of Shader_Access;
   type Shader_Access_Array_Access is access all Shader_Access_Array;
   type Shader_Access_Array_Access_Array is array (Natural range <>) of Shader_Access_Array_Access;
   type Shader_Access_Array_Access_Array_Access is access all Shader_Access_Array_Access_Array;
   type Shader_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Shader_Access_Array_Access;
   end record;
   function Java_Box (Value : Shader_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Shader_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Shader_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Shader_Access_Array_Access is (if Value /= null and then Value.all in Shader_Access_Array_Object'Class then Shader_Access_Array_Object'Class (Value.all).Value else null);
   type Shader_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Shader_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Shader_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Shader_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Shader_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Shader_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Shader_Access_Array_Access_Array_Object'Class then Shader_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.shader.Shader_Package_References;

with org.allbinary.graphics.opengles.shader.Shader_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.graphics.opengles.shader.Shader_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Shader_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access;
   function "=" (Left, Right : Shader_Access) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array;
   function "=" (Left, Right : Shader_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access;
   function "=" (Left, Right : Shader_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   function Java_Box (Value : Shader_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.Shader_Package_References.Java_Box;
   function Java_Unbox_Shader_Access_Array (Value : access Java_Object'Class) return Shader_Access_Array_Access renames org.allbinary.graphics.opengles.shader.Shader_Package_References.Java_Unbox_Shader_Access_Array;
   subtype Shader_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access_Array;
   function "=" (Left, Right : Shader_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   subtype Shader_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Shader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.Shader_Package_References."=";
   function Java_Box (Value : Shader_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.Shader_Package_References.Java_Box;
   function Java_Unbox_Shader_Access_Array_Access_Array (Value : access Java_Object'Class) return Shader_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.shader.Shader_Package_References.Java_Unbox_Shader_Access_Array_Access_Array;

   type Shader is new Java_Object with record
      shaderName : Unbounded_String;
      shaderStringList : BasicArrayList_Access;
      shaderAsString : Unbounded_String;
      shaderHandle : Integer;
   end record;

   procedure Initialize (This : in out Shader'Class);
   function Create return Shader_Access;

end org.allbinary.graphics.opengles.shader.Shader_Package;


