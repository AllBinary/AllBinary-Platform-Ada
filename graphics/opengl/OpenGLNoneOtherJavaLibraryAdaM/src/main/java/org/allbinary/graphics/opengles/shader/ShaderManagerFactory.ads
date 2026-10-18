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
with org.allbinary.graphics.opengles.shader.ShaderManager_Package; use org.allbinary.graphics.opengles.shader.ShaderManager_Package;

package org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package is


   type ShaderManagerFactory is tagged;
   type ShaderManagerFactory_Access is access all ShaderManagerFactory'Class;
   type ShaderManagerFactory_Access_Array is array (Natural range <>) of ShaderManagerFactory_Access;
   type ShaderManagerFactory_Access_Array_Access is access all ShaderManagerFactory_Access_Array;
   type ShaderManagerFactory_Access_Array_Access_Array is array (Natural range <>) of ShaderManagerFactory_Access_Array_Access;
   type ShaderManagerFactory_Access_Array_Access_Array_Access is access all ShaderManagerFactory_Access_Array_Access_Array;

   type ShaderManagerFactory is new Java_Object with null record;
   instance : ShaderManagerFactory_Access;

   procedure Initialize (This : in out ShaderManagerFactory'Class);
   function Create return ShaderManagerFactory_Access;
   function getInstance return ShaderManagerFactory_Access;
   function create (This : in out ShaderManagerFactory) return ShaderManager_Access;

end org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package;


