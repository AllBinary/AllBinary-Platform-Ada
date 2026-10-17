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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.graphics.opengles.shader.ModelViewProjection_Package is

   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type ModelViewProjection is tagged;
   type ModelViewProjection_Access is access all ModelViewProjection'Class;
   type ModelViewProjection_Access_Array is array (Natural range <>) of ModelViewProjection_Access;
   type ModelViewProjection_Access_Array_Access is access all ModelViewProjection_Access_Array;

   type ModelViewProjection is new Java_Object with null record;
   instance : ModelViewProjection_Access;

   procedure Initialize (This : in out ModelViewProjection'Class);
   function Create return ModelViewProjection_Access;
   function getInstance return ModelViewProjection_Access;
   procedure getInstance;
   function get (This : in out ModelViewProjection) return Float_Array_Access;
   procedure get (This : in out ModelViewProjection);

end org.allbinary.graphics.opengles.shader.ModelViewProjection_Package;


