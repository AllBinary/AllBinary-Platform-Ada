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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type TransformInfoObjectConfigGenerator is tagged;
   type TransformInfoObjectConfigGenerator_Access is access all TransformInfoObjectConfigGenerator'Class;
   type TransformInfoObjectConfigGenerator_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGenerator_Access;
   type TransformInfoObjectConfigGenerator_Access_Array_Access is access all TransformInfoObjectConfigGenerator_Access_Array;
   type TransformInfoObjectConfigGenerator_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGenerator_Access_Array_Access;
   type TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigGenerator_Access_Array_Access_Array;

   type TransformInfoObjectConfigGenerator is new Java_Object and TransformInfoObjectConfigGeneratorInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out TransformInfoObjectConfigGenerator'Class);
   function Create return TransformInfoObjectConfigGenerator_Access;
   function process (This : in out TransformInfoObjectConfigGenerator; input : Unbounded_String) return Unbounded_String;
   procedure process (This : in out TransformInfoObjectConfigGenerator; input : Unbounded_String);

end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;


