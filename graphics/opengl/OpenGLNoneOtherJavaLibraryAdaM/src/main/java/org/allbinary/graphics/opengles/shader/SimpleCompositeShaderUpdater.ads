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
with org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package; use org.allbinary.graphics.opengles.shader.CompositeShaderUpdater_Package;

package org.allbinary.graphics.opengles.shader.SimpleCompositeShaderUpdater_Package is


   type SimpleCompositeShaderUpdater is tagged;
   type SimpleCompositeShaderUpdater_Access is access all SimpleCompositeShaderUpdater'Class;
   type SimpleCompositeShaderUpdater_Access_Array is array (Natural range <>) of SimpleCompositeShaderUpdater_Access;
   type SimpleCompositeShaderUpdater_Access_Array_Access is access all SimpleCompositeShaderUpdater_Access_Array;
   type SimpleCompositeShaderUpdater_Access_Array_Access_Array is array (Natural range <>) of SimpleCompositeShaderUpdater_Access_Array_Access;
   type SimpleCompositeShaderUpdater_Access_Array_Access_Array_Access is access all SimpleCompositeShaderUpdater_Access_Array_Access_Array;

   type SimpleCompositeShaderUpdater is new CompositeShaderUpdater with null record;

   procedure Initialize (This : in out SimpleCompositeShaderUpdater'Class; uniformBlockArray : Unbounded_String_Array_Access; uniformArray : Unbounded_String_Array_Access; attributeArray : Unbounded_String_Array_Access; attributeHandleArray : Integer_Array_Access);
   function Create (uniformBlockArray : Unbounded_String_Array_Access; uniformArray : Unbounded_String_Array_Access; attributeArray : Unbounded_String_Array_Access; attributeHandleArray : Integer_Array_Access) return SimpleCompositeShaderUpdater_Access;

end org.allbinary.graphics.opengles.shader.SimpleCompositeShaderUpdater_Package;


