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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.opengles.shader.ShaderStrings_Package is


   type ShaderStrings is tagged;
   type ShaderStrings_Access is access all ShaderStrings'Class;
   type ShaderStrings_Access_Array is array (Natural range <>) of ShaderStrings_Access;
   type ShaderStrings_Access_Array_Access is access all ShaderStrings_Access_Array;
   type ShaderStrings_Access_Array_Access_Array is array (Natural range <>) of ShaderStrings_Access_Array_Access;
   type ShaderStrings_Access_Array_Access_Array_Access is access all ShaderStrings_Access_Array_Access_Array;

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


