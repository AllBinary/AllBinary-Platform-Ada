--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
with org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityFactory_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityFactory_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;

package org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package is

   package TransformInfoHttpStoreFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package;
   package TransformInfoObjectConfigAndManipulatorFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
   package TransformInfoObjectConfigGeneratorFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;

   type TransformInfoEntityBuilder is tagged;
   type TransformInfoEntityBuilder_Access is access all TransformInfoEntityBuilder'Class;
   type TransformInfoEntityBuilder_Access_Array is array (Natural range <>) of TransformInfoEntityBuilder_Access;
   type TransformInfoEntityBuilder_Access_Array_Access is access all TransformInfoEntityBuilder_Access_Array;

   type TransformInfoEntityBuilder is new Java_Object with null record;

   procedure Initialize (This : in out TransformInfoEntityBuilder'Class);
   function Create return TransformInfoEntityBuilder_Access;
   function getInstance return TransformInfoEntity_Access;

end org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;


