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
limited with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;
package org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References is
   type ShaderInitializer_Access is access all org.allbinary.graphics.opengles.shader.ShaderInitializer_Package.ShaderInitializer'Class;
   type ShaderInitializer_Access_Array is array (Natural range <>) of ShaderInitializer_Access;
   type ShaderInitializer_Access_Array_Access is access all ShaderInitializer_Access_Array;
   type ShaderInitializer_Access_Array_Access_Array is array (Natural range <>) of ShaderInitializer_Access_Array_Access;
   type ShaderInitializer_Access_Array_Access_Array_Access is access all ShaderInitializer_Access_Array_Access_Array;
   type ShaderInitializer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShaderInitializer_Access_Array_Access;
   end record;
   function Java_Box (Value : ShaderInitializer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShaderInitializer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShaderInitializer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShaderInitializer_Access_Array_Access is (if Value /= null and then Value.all in ShaderInitializer_Access_Array_Object'Class then ShaderInitializer_Access_Array_Object'Class (Value.all).Value else null);
   type ShaderInitializer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShaderInitializer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShaderInitializer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShaderInitializer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShaderInitializer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShaderInitializer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShaderInitializer_Access_Array_Access_Array_Object'Class then ShaderInitializer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References;

with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References;
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
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.graphics.opengles.shader.Shader_Package;
with org.allbinary.graphics.opengles.shader.Shader_Package_References;

package org.allbinary.graphics.opengles.shader.ShaderInitializer_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype Shader_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access;
   use type Shader_Access;
   subtype Shader_Access_Array is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array;
   use type Shader_Access_Array;
   subtype Shader_Access_Array_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access;
   use type Shader_Access_Array_Access;
   subtype Shader_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access_Array;
   use type Shader_Access_Array_Access_Array;
   subtype Shader_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.Shader_Package_References.Shader_Access_Array_Access_Array_Access;
   use type Shader_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShaderInitializer_Access is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access;
   function "=" (Left, Right : ShaderInitializer_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References."=";
   subtype ShaderInitializer_Access_Array is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array;
   function "=" (Left, Right : ShaderInitializer_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References."=";
   subtype ShaderInitializer_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array_Access;
   function "=" (Left, Right : ShaderInitializer_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References."=";
   function Java_Box (Value : ShaderInitializer_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.Java_Box;
   function Java_Unbox_ShaderInitializer_Access_Array (Value : access Java_Object'Class) return ShaderInitializer_Access_Array_Access renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.Java_Unbox_ShaderInitializer_Access_Array;
   subtype ShaderInitializer_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array_Access_Array;
   function "=" (Left, Right : ShaderInitializer_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References."=";
   subtype ShaderInitializer_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.ShaderInitializer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShaderInitializer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References."=";
   function Java_Box (Value : ShaderInitializer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.Java_Box;
   function Java_Unbox_ShaderInitializer_Access_Array_Access_Array (Value : access Java_Object'Class) return ShaderInitializer_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.shader.ShaderInitializer_Package_References.Java_Unbox_ShaderInitializer_Access_Array_Access_Array;

   type ShaderInitializer is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;
   instance : ShaderInitializer_Access;

   procedure Initialize (This : in out ShaderInitializer'Class);
   function Create return ShaderInitializer_Access;
   function getInstance return ShaderInitializer_Access;
   function init (This : in out ShaderInitializer; gl_Param : access GL10_Package.GL10'Class; shader : Shader_Access_Array_Access; attributeArray : Unbounded_String_Array_Access) return Integer;
   procedure init (This : in out ShaderInitializer; gl_Param : access GL10_Package.GL10'Class; shader : Shader_Access_Array_Access; attributeArray : Unbounded_String_Array_Access);

end org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;


