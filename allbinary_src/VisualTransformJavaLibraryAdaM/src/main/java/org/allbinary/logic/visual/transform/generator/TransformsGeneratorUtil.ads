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
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;

package org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectConfigInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;

   type TransformsGeneratorUtil is tagged;
   type TransformsGeneratorUtil_Access is access all TransformsGeneratorUtil'Class;
   type TransformsGeneratorUtil_Access_Array is array (Natural range <>) of TransformsGeneratorUtil_Access;
   type TransformsGeneratorUtil_Access_Array_Access is access all TransformsGeneratorUtil_Access_Array;
   type TransformsGeneratorUtil_Access_Array_Access_Array is array (Natural range <>) of TransformsGeneratorUtil_Access_Array_Access;
   type TransformsGeneratorUtil_Access_Array_Access_Array_Access is access all TransformsGeneratorUtil_Access_Array_Access_Array;

   type TransformsGeneratorUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformsGeneratorUtil_Access;

   procedure Initialize (This : in out TransformsGeneratorUtil'Class);
   function Create return TransformsGeneratorUtil_Access;
   function getInstance return TransformsGeneratorUtil_Access;
   function generateComponentsFromObjectConfig (This : in out TransformsGeneratorUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; group : Unbounded_String) return Unbounded_String;
   procedure generateComponentsFromObjectConfig (This : in out TransformsGeneratorUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; group : Unbounded_String);
   function generateComponentsFromObjectConfig (This : in out TransformsGeneratorUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoObjectConfigInterface_Param : access TransformInfoObjectConfigInterface_Package.TransformInfoObjectConfigInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; group : Unbounded_String) return Unbounded_String;
   procedure generateComponentsFromObjectConfig (This : in out TransformsGeneratorUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoObjectConfigInterface_Param : access TransformInfoObjectConfigInterface_Package.TransformInfoObjectConfigInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; group : Unbounded_String);

end org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package;


