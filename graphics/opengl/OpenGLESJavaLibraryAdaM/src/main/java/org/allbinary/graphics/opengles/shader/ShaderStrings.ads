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

limited with org.allbinary.graphics.opengles.shader.ShaderStrings_Package;
package org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References is
   type ShaderStrings_Access is access all org.allbinary.graphics.opengles.shader.ShaderStrings_Package.ShaderStrings'Class;
   type ShaderStrings_Access_Array is array (Natural range <>) of ShaderStrings_Access;
   type ShaderStrings_Access_Array_Access is access all ShaderStrings_Access_Array;
   type ShaderStrings_Access_Array_Access_Array is array (Natural range <>) of ShaderStrings_Access_Array_Access;
   type ShaderStrings_Access_Array_Access_Array_Access is access all ShaderStrings_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References;

with org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.opengles.shader.ShaderStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ShaderStrings_Access is org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References.ShaderStrings_Access;
   function "=" (Left, Right : ShaderStrings_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References."=";
   subtype ShaderStrings_Access_Array is org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References.ShaderStrings_Access_Array;
   function "=" (Left, Right : ShaderStrings_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References."=";
   subtype ShaderStrings_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References.ShaderStrings_Access_Array_Access;
   function "=" (Left, Right : ShaderStrings_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References."=";
   subtype ShaderStrings_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References.ShaderStrings_Access_Array_Access_Array;
   function "=" (Left, Right : ShaderStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References."=";
   subtype ShaderStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References.ShaderStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShaderStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderStrings_Package_References."=";

   type ShaderStrings is new Java_Object with record
      NO_PROGRAM_HANDLE : Unbounded_String;
      UNIFORM_BLOCK_HANDLE : Unbounded_String;
      UNIFORM_HANDLE : Unbounded_String;
      UNIFORM_ATTRIBUTE_HANDLE : Unbounded_String;
   end record;
   instance : ShaderStrings_Access;

   procedure Initialize (This : in out ShaderStrings'Class);
   function Create return ShaderStrings_Access;
   function getInstance return ShaderStrings_Access;

end org.allbinary.graphics.opengles.shader.ShaderStrings_Package;


