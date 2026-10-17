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
with org.allbinary.graphics.opengles.shader.ShaderInitializer_Package; use org.allbinary.graphics.opengles.shader.ShaderInitializer_Package;

package org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package is


   type SimpleShaderInitializer is tagged;
   type SimpleShaderInitializer_Access is access all SimpleShaderInitializer'Class;
   type SimpleShaderInitializer_Access_Array is array (Natural range <>) of SimpleShaderInitializer_Access;
   type SimpleShaderInitializer_Access_Array_Access is access all SimpleShaderInitializer_Access_Array;

   type SimpleShaderInitializer is new ShaderInitializer with null record;
   instanceC : SimpleShaderInitializer_Access;

   procedure Initialize (This : in out SimpleShaderInitializer'Class);
   function Create return SimpleShaderInitializer_Access;
   function getInstance return SimpleShaderInitializer_Access;
   procedure getInstance;

end org.allbinary.graphics.opengles.shader.SimpleShaderInitializer_Package;


