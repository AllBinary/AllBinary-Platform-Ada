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

package org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package is


   type LoadedShaderManager is tagged;
   type LoadedShaderManager_Access is access all LoadedShaderManager'Class;
   type LoadedShaderManager_Access_Array is array (Natural range <>) of LoadedShaderManager_Access;
   type LoadedShaderManager_Access_Array_Access is access all LoadedShaderManager_Access_Array;

   type LoadedShaderManager is new Java_Object with null record;
   instance : ShaderManager_Access;

   procedure Initialize (This : in out LoadedShaderManager'Class);
   function Create return LoadedShaderManager_Access;
   function getInstance return ShaderManager_Access;
   procedure getInstance;

end org.allbinary.graphics.opengles.shader.LoadedShaderManager_Package;


