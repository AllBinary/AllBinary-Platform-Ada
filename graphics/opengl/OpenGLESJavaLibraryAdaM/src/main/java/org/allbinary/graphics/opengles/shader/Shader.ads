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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.graphics.opengles.shader.Shader_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type Shader is tagged;
   type Shader_Access is access all Shader'Class;
   type Shader_Access_Array is array (Natural range <>) of Shader_Access;
   type Shader_Access_Array_Access is access all Shader_Access_Array;
   type Shader_Access_Array_Access_Array is array (Natural range <>) of Shader_Access_Array_Access;
   type Shader_Access_Array_Access_Array_Access is access all Shader_Access_Array_Access_Array;

   type Shader is new Java_Object with record
      shaderName : Unbounded_String;
      shaderStringList : BasicArrayList_Access;
      shaderAsString : Unbounded_String;
      shaderHandle : Integer;
   end record;

   procedure Initialize (This : in out Shader'Class);
   function Create return Shader_Access;

end org.allbinary.graphics.opengles.shader.Shader_Package;


