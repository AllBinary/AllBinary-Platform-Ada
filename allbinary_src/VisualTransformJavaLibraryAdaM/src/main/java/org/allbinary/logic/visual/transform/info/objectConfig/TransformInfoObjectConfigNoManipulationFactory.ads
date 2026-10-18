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
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type TransformInfoObjectConfigNoManipulationFactory is tagged;
   type TransformInfoObjectConfigNoManipulationFactory_Access is access all TransformInfoObjectConfigNoManipulationFactory'Class;
   type TransformInfoObjectConfigNoManipulationFactory_Access_Array is array (Natural range <>) of TransformInfoObjectConfigNoManipulationFactory_Access;
   type TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access is access all TransformInfoObjectConfigNoManipulationFactory_Access_Array;
   type TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access;
   type TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array;

   type TransformInfoObjectConfigNoManipulationFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformInfoObjectConfigNoManipulationFactory_Access;

   procedure Initialize (This : in out TransformInfoObjectConfigNoManipulationFactory'Class);
   function Create return TransformInfoObjectConfigNoManipulationFactory_Access;
   function getInstance return TransformInfoObjectConfigNoManipulationFactory_Access;
   function getInstance (This : in out TransformInfoObjectConfigNoManipulationFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath_Package.AbPath'Class) return TransformInfoObjectConfigInterface_Access;
   procedure getInstance (This : in out TransformInfoObjectConfigNoManipulationFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath_Package.AbPath'Class);

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package;


