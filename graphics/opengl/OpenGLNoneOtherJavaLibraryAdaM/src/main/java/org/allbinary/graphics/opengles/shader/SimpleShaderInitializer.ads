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

limited with org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package;
package org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References is
   type SimpleShaderInitializer_Access is access all org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package.SimpleShaderInitializer'Class;
   type SimpleShaderInitializer_Access_Array is array (Natural range <>) of SimpleShaderInitializer_Access;
   type SimpleShaderInitializer_Access_Array_Access is access all SimpleShaderInitializer_Access_Array;
   type SimpleShaderInitializer_Access_Array_Access_Array is array (Natural range <>) of SimpleShaderInitializer_Access_Array_Access;
   type SimpleShaderInitializer_Access_Array_Access_Array_Access is access all SimpleShaderInitializer_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References;

with org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package; use org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;

package org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SimpleShaderInitializer_Access is org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References.SimpleShaderInitializer_Access;
   function "=" (Left, Right : SimpleShaderInitializer_Access) return Boolean renames org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References."=";
   subtype SimpleShaderInitializer_Access_Array is org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References.SimpleShaderInitializer_Access_Array;
   function "=" (Left, Right : SimpleShaderInitializer_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References."=";
   subtype SimpleShaderInitializer_Access_Array_Access is org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References.SimpleShaderInitializer_Access_Array_Access;
   function "=" (Left, Right : SimpleShaderInitializer_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References."=";
   subtype SimpleShaderInitializer_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References.SimpleShaderInitializer_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleShaderInitializer_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References."=";
   subtype SimpleShaderInitializer_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References.SimpleShaderInitializer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleShaderInitializer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package_References."=";

   type SimpleShaderInitializer is new ShaderInitializer with null record;
   instanceC : SimpleShaderInitializer_Access;

   procedure Initialize (This : in out SimpleShaderInitializer'Class);
   function Create return SimpleShaderInitializer_Access;
   function getInstance return SimpleShaderInitializer_Access;

end org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package;


