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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.InputOutputTypeData_Package; use org.allbinary.logic.io.InputOutputTypeData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package InputOutputTypeData_Package renames Standard.org.allbinary.logic.io.InputOutputTypeData_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type TransformInfoObjectConfigGeneratorFactory is tagged;
   type TransformInfoObjectConfigGeneratorFactory_Access is access all TransformInfoObjectConfigGeneratorFactory'Class;
   type TransformInfoObjectConfigGeneratorFactory_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGeneratorFactory_Access;
   type TransformInfoObjectConfigGeneratorFactory_Access_Array_Access is access all TransformInfoObjectConfigGeneratorFactory_Access_Array;

   type TransformInfoObjectConfigGeneratorFactory is new TransformInfoObjectConfigGeneratorFactoryInterface with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformInfoObjectConfigGeneratorFactory_Access;

   procedure Initialize (This : in out TransformInfoObjectConfigGeneratorFactory'Class);
   function Create return TransformInfoObjectConfigGeneratorFactory_Access;
   function getInstance return TransformInfoObjectConfigGeneratorFactory_Access;
   function getInstance (This : in out TransformInfoObjectConfigGeneratorFactory; transformInfoInterface_Param : access TransformInfoInterface'Class) return TransformInfoObjectConfigGenerator_Access;
   procedure getInstance (This : in out TransformInfoObjectConfigGeneratorFactory; transformInfoInterface_Param : access TransformInfoInterface'Class);

end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;


