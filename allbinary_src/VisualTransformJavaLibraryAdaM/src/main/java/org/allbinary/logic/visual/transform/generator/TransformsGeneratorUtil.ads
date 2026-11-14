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

with AllBinary_Java;
limited with org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package;
package org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References is
   type TransformsGeneratorUtil_Access is access all org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package.TransformsGeneratorUtil'Class;
   type TransformsGeneratorUtil_Access_Array is array (Natural range <>) of TransformsGeneratorUtil_Access;
   type TransformsGeneratorUtil_Access_Array_Access is access all TransformsGeneratorUtil_Access_Array;
   type TransformsGeneratorUtil_Access_Array_Access_Array is array (Natural range <>) of TransformsGeneratorUtil_Access_Array_Access;
   type TransformsGeneratorUtil_Access_Array_Access_Array_Access is access all TransformsGeneratorUtil_Access_Array_Access_Array;
   type TransformsGeneratorUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformsGeneratorUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformsGeneratorUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformsGeneratorUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformsGeneratorUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformsGeneratorUtil_Access_Array_Access is (if Value /= null and then Value.all in TransformsGeneratorUtil_Access_Array_Object'Class then TransformsGeneratorUtil_Access_Array_Object'Class (Value.all).Value else null);
   type TransformsGeneratorUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformsGeneratorUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformsGeneratorUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformsGeneratorUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformsGeneratorUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformsGeneratorUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformsGeneratorUtil_Access_Array_Access_Array_Object'Class then TransformsGeneratorUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References;

with org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References;
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
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References;

package org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectConfigInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
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


   subtype TransformsGeneratorUtil_Access is org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References.TransformsGeneratorUtil_Access;
   function "=" (Left, Right : TransformsGeneratorUtil_Access) return Boolean renames org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References."=";
   subtype TransformsGeneratorUtil_Access_Array is org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References.TransformsGeneratorUtil_Access_Array;
   function "=" (Left, Right : TransformsGeneratorUtil_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References."=";
   subtype TransformsGeneratorUtil_Access_Array_Access is org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References.TransformsGeneratorUtil_Access_Array_Access;
   function "=" (Left, Right : TransformsGeneratorUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References."=";
   function Java_Box (Value : TransformsGeneratorUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References.Java_Box;
   function Java_Unbox_TransformsGeneratorUtil_Access_Array (Value : access Java_Object'Class) return TransformsGeneratorUtil_Access_Array_Access renames org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References.Java_Unbox_TransformsGeneratorUtil_Access_Array;
   subtype TransformsGeneratorUtil_Access_Array_Access_Array is org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References.TransformsGeneratorUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TransformsGeneratorUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References."=";
   subtype TransformsGeneratorUtil_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References.TransformsGeneratorUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformsGeneratorUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References."=";
   function Java_Box (Value : TransformsGeneratorUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References.Java_Box;
   function Java_Unbox_TransformsGeneratorUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformsGeneratorUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil_Package_References.Java_Unbox_TransformsGeneratorUtil_Access_Array_Access_Array;

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


