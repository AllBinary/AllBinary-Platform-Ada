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

limited with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References is
   type TransformInfoObjectConfigNoManipulationFactory_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package.TransformInfoObjectConfigNoManipulationFactory'Class;
   type TransformInfoObjectConfigNoManipulationFactory_Access_Array is array (Natural range <>) of TransformInfoObjectConfigNoManipulationFactory_Access;
   type TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access is access all TransformInfoObjectConfigNoManipulationFactory_Access_Array;
   type TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access;
   type TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoObjectConfigInterface_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access;
   use type TransformInfoObjectConfigInterface_Access;
   subtype TransformInfoObjectConfigInterface_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array;
   use type TransformInfoObjectConfigInterface_Access_Array;
   subtype TransformInfoObjectConfigInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access;
   use type TransformInfoObjectConfigInterface_Access_Array_Access;
   subtype TransformInfoObjectConfigInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access_Array;
   use type TransformInfoObjectConfigInterface_Access_Array_Access_Array;
   subtype TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access;
   use type TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoObjectConfigNoManipulationFactory_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References.TransformInfoObjectConfigNoManipulationFactory_Access;
   function "=" (Left, Right : TransformInfoObjectConfigNoManipulationFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References."=";
   subtype TransformInfoObjectConfigNoManipulationFactory_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References.TransformInfoObjectConfigNoManipulationFactory_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigNoManipulationFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References."=";
   subtype TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References.TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References."=";
   subtype TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References.TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References."=";
   subtype TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References.TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigNoManipulationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package_References."=";

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


