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
limited with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References is
   type TransformInfoObjectConfigGeneratorFactory_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package.TransformInfoObjectConfigGeneratorFactory'Class;
   type TransformInfoObjectConfigGeneratorFactory_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGeneratorFactory_Access;
   type TransformInfoObjectConfigGeneratorFactory_Access_Array_Access is access all TransformInfoObjectConfigGeneratorFactory_Access_Array;
   type TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGeneratorFactory_Access_Array_Access;
   type TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array;
   type TransformInfoObjectConfigGeneratorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoObjectConfigGeneratorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoObjectConfigGeneratorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoObjectConfigGeneratorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoObjectConfigGeneratorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoObjectConfigGeneratorFactory_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoObjectConfigGeneratorFactory_Access_Array_Object'Class then TransformInfoObjectConfigGeneratorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Object'Class then TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References;
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
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package;
limited with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype TransformInfoObjectConfigGenerator_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access;
   use type TransformInfoObjectConfigGenerator_Access;
   subtype TransformInfoObjectConfigGenerator_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array;
   use type TransformInfoObjectConfigGenerator_Access_Array;
   subtype TransformInfoObjectConfigGenerator_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array_Access;
   use type TransformInfoObjectConfigGenerator_Access_Array_Access;
   subtype TransformInfoObjectConfigGenerator_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array_Access_Array;
   use type TransformInfoObjectConfigGenerator_Access_Array_Access_Array;
   subtype TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access;
   use type TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoObjectConfigGeneratorFactory_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References.TransformInfoObjectConfigGeneratorFactory_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References."=";
   subtype TransformInfoObjectConfigGeneratorFactory_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References.TransformInfoObjectConfigGeneratorFactory_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References."=";
   subtype TransformInfoObjectConfigGeneratorFactory_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References.TransformInfoObjectConfigGeneratorFactory_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References."=";
   function Java_Box (Value : TransformInfoObjectConfigGeneratorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoObjectConfigGeneratorFactory_Access_Array (Value : access Java_Object'Class) return TransformInfoObjectConfigGeneratorFactory_Access_Array_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References.Java_Unbox_TransformInfoObjectConfigGeneratorFactory_Access_Array;
   subtype TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References.TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References."=";
   subtype TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References.TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References."=";
   function Java_Box (Value : TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package_References.Java_Unbox_TransformInfoObjectConfigGeneratorFactory_Access_Array_Access_Array;

   type TransformInfoObjectConfigGeneratorFactory is new Java_Object and TransformInfoObjectConfigGeneratorFactoryInterface with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformInfoObjectConfigGeneratorFactory_Access;

   procedure Initialize (This : in out TransformInfoObjectConfigGeneratorFactory'Class);
   function Create return TransformInfoObjectConfigGeneratorFactory_Access;
   function getInstance return TransformInfoObjectConfigGeneratorFactory_Access;
   function getInstance (This : in out TransformInfoObjectConfigGeneratorFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoObjectConfigGenerator_Access;
   procedure getInstance (This : in out TransformInfoObjectConfigGeneratorFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);

end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;


