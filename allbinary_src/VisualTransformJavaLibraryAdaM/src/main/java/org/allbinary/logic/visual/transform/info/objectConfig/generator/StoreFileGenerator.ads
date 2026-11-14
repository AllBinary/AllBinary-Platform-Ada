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
limited with org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References is
   type StoreFileGenerator_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package.StoreFileGenerator'Class;
   type StoreFileGenerator_Access_Array is array (Natural range <>) of StoreFileGenerator_Access;
   type StoreFileGenerator_Access_Array_Access is access all StoreFileGenerator_Access_Array;
   type StoreFileGenerator_Access_Array_Access_Array is array (Natural range <>) of StoreFileGenerator_Access_Array_Access;
   type StoreFileGenerator_Access_Array_Access_Array_Access is access all StoreFileGenerator_Access_Array_Access_Array;
   type StoreFileGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFileGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFileGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFileGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFileGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFileGenerator_Access_Array_Access is (if Value /= null and then Value.all in StoreFileGenerator_Access_Array_Object'Class then StoreFileGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFileGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFileGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFileGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFileGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFileGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFileGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFileGenerator_Access_Array_Access_Array_Object'Class then StoreFileGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References;
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
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreFileGenerator_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References.StoreFileGenerator_Access;
   function "=" (Left, Right : StoreFileGenerator_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References."=";
   subtype StoreFileGenerator_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References.StoreFileGenerator_Access_Array;
   function "=" (Left, Right : StoreFileGenerator_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References."=";
   subtype StoreFileGenerator_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References.StoreFileGenerator_Access_Array_Access;
   function "=" (Left, Right : StoreFileGenerator_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References."=";
   function Java_Box (Value : StoreFileGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References.Java_Box;
   function Java_Unbox_StoreFileGenerator_Access_Array (Value : access Java_Object'Class) return StoreFileGenerator_Access_Array_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References.Java_Unbox_StoreFileGenerator_Access_Array;
   subtype StoreFileGenerator_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References.StoreFileGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFileGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References."=";
   subtype StoreFileGenerator_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References.StoreFileGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFileGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References."=";
   function Java_Box (Value : StoreFileGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References.Java_Box;
   function Java_Unbox_StoreFileGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFileGenerator_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package_References.Java_Unbox_StoreFileGenerator_Access_Array_Access_Array;

   type StoreFileGenerator is new TransformInfoObjectConfigGenerator with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      output : Unbounded_String;
      fileAbPath : AbPath_Access;
      file : AbFile_Access;
   end record;

   procedure Initialize (This : in out StoreFileGenerator'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return StoreFileGenerator_Access;
   function process (This : in out StoreFileGenerator; input : Unbounded_String) return Unbounded_String;
   procedure process (This : in out StoreFileGenerator; input : Unbounded_String);

end org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package;


