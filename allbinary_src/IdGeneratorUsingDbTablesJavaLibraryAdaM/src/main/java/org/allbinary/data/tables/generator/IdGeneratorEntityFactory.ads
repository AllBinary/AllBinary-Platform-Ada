-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type IdGeneratorEntityFactory is tagged;
   type IdGeneratorEntityFactory_Access is access all IdGeneratorEntityFactory'Class;
   type IdGeneratorEntityFactory_Access_Array is array (Natural range <>) of IdGeneratorEntityFactory_Access;
   type IdGeneratorEntityFactory_Access_Array_Access is access all IdGeneratorEntityFactory_Access_Array;

   type IdGeneratorEntityFactory is new Java_Object with null record;

   procedure Initialize (This : in out IdGeneratorEntityFactory'Class);
   function Create return IdGeneratorEntityFactory_Access;
   function getInstance return IdGeneratorEntityInterface_Access;
   procedure getInstance;

end org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package;


