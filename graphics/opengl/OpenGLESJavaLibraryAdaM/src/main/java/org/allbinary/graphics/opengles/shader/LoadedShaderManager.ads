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

limited with org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package;
package org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References is
   type LoadedShaderManager_Access is access all org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package.LoadedShaderManager'Class;
   type LoadedShaderManager_Access_Array is array (Natural range <>) of LoadedShaderManager_Access;
   type LoadedShaderManager_Access_Array_Access is access all LoadedShaderManager_Access_Array;
   type LoadedShaderManager_Access_Array_Access_Array is array (Natural range <>) of LoadedShaderManager_Access_Array_Access;
   type LoadedShaderManager_Access_Array_Access_Array_Access is access all LoadedShaderManager_Access_Array_Access_Array;
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
   subtype LoadedShaderManager_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.LoadedShaderManager_Access_Array_Access_Array;
   function "=" (Left, Right : LoadedShaderManager_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References."=";
   subtype LoadedShaderManager_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References.LoadedShaderManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LoadedShaderManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package_References."=";

   type LoadedShaderManager is new Java_Object with null record;
   instance : ShaderManager_Access;

   procedure Initialize (This : in out LoadedShaderManager'Class);
   function Create return LoadedShaderManager_Access;
   function getInstance return ShaderManager_Access;

end org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package;


