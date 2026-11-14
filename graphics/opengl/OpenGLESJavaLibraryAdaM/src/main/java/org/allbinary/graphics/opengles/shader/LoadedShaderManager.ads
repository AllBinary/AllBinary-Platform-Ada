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
limited with org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package;
package org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References is
   type LoadedShaderManager_Access is access all org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package.LoadedShaderManager'Class;
   type LoadedShaderManager_Access_Array is array (Natural range <>) of LoadedShaderManager_Access;
   type LoadedShaderManager_Access_Array_Access is access all LoadedShaderManager_Access_Array;
   type LoadedShaderManager_Access_Array_Access_Array is array (Natural range <>) of LoadedShaderManager_Access_Array_Access;
   type LoadedShaderManager_Access_Array_Access_Array_Access is access all LoadedShaderManager_Access_Array_Access_Array;
   type LoadedShaderManager_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LoadedShaderManager_Access_Array_Access;
   end record;
   function Java_Box (Value : LoadedShaderManager_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LoadedShaderManager_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LoadedShaderManager_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LoadedShaderManager_Access_Array_Access is (if Value /= null and then Value.all in LoadedShaderManager_Access_Array_Object'Class then LoadedShaderManager_Access_Array_Object'Class (Value.all).Value else null);
   type LoadedShaderManager_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LoadedShaderManager_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LoadedShaderManager_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LoadedShaderManager_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LoadedShaderManager_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LoadedShaderManager_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LoadedShaderManager_Access_Array_Access_Array_Object'Class then LoadedShaderManager_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References;

with org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.opengles.shader.ShaderManager_Package;
with org.allbinary.graphics.opengles.shader.ShaderManager_Package_References;

package org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package is

   package Reference_Types is
   subtype ShaderManager_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access;
   use type ShaderManager_Access;
   subtype ShaderManager_Access_Array is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array;
   use type ShaderManager_Access_Array;
   subtype ShaderManager_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access;
   use type ShaderManager_Access_Array_Access;
   subtype ShaderManager_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access_Array;
   use type ShaderManager_Access_Array_Access_Array;
   subtype ShaderManager_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access_Array_Access;
   use type ShaderManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LoadedShaderManager_Access is org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.LoadedShaderManager_Access;
   function "=" (Left, Right : LoadedShaderManager_Access) return Boolean renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References."=";
   subtype LoadedShaderManager_Access_Array is org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.LoadedShaderManager_Access_Array;
   function "=" (Left, Right : LoadedShaderManager_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References."=";
   subtype LoadedShaderManager_Access_Array_Access is org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.LoadedShaderManager_Access_Array_Access;
   function "=" (Left, Right : LoadedShaderManager_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References."=";
   function Java_Box (Value : LoadedShaderManager_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.Java_Box;
   function Java_Unbox_LoadedShaderManager_Access_Array (Value : access Java_Object'Class) return LoadedShaderManager_Access_Array_Access renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.Java_Unbox_LoadedShaderManager_Access_Array;
   subtype LoadedShaderManager_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.LoadedShaderManager_Access_Array_Access_Array;
   function "=" (Left, Right : LoadedShaderManager_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References."=";
   subtype LoadedShaderManager_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.LoadedShaderManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LoadedShaderManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References."=";
   function Java_Box (Value : LoadedShaderManager_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.Java_Box;
   function Java_Unbox_LoadedShaderManager_Access_Array_Access_Array (Value : access Java_Object'Class) return LoadedShaderManager_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.Java_Unbox_LoadedShaderManager_Access_Array_Access_Array;

   type LoadedShaderManager is new Java_Object with null record;
   instance : ShaderManager_Access;

   procedure Initialize (This : in out LoadedShaderManager'Class);
   function Create return LoadedShaderManager_Access;
   function getInstance return ShaderManager_Access;

end org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package;


