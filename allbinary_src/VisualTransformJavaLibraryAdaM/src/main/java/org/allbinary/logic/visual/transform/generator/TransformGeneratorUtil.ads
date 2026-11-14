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
limited with org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package;
package org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References is
   type TransformGeneratorUtil_Access is access all org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package.TransformGeneratorUtil'Class;
   type TransformGeneratorUtil_Access_Array is array (Natural range <>) of TransformGeneratorUtil_Access;
   type TransformGeneratorUtil_Access_Array_Access is access all TransformGeneratorUtil_Access_Array;
   type TransformGeneratorUtil_Access_Array_Access_Array is array (Natural range <>) of TransformGeneratorUtil_Access_Array_Access;
   type TransformGeneratorUtil_Access_Array_Access_Array_Access is access all TransformGeneratorUtil_Access_Array_Access_Array;
   type TransformGeneratorUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformGeneratorUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformGeneratorUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformGeneratorUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformGeneratorUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformGeneratorUtil_Access_Array_Access is (if Value /= null and then Value.all in TransformGeneratorUtil_Access_Array_Object'Class then TransformGeneratorUtil_Access_Array_Object'Class (Value.all).Value else null);
   type TransformGeneratorUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformGeneratorUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformGeneratorUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformGeneratorUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformGeneratorUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformGeneratorUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformGeneratorUtil_Access_Array_Access_Array_Object'Class then TransformGeneratorUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References;

with org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References;
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
limited with org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;

package org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoDomNode_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
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
   subtype TransformInfoDomNode_Access is org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.TransformInfoDomNode_Access;
   use type TransformInfoDomNode_Access;
   subtype TransformInfoDomNode_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.TransformInfoDomNode_Access_Array;
   use type TransformInfoDomNode_Access_Array;
   subtype TransformInfoDomNode_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.TransformInfoDomNode_Access_Array_Access;
   use type TransformInfoDomNode_Access_Array_Access;
   subtype TransformInfoDomNode_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.TransformInfoDomNode_Access_Array_Access_Array;
   use type TransformInfoDomNode_Access_Array_Access_Array;
   subtype TransformInfoDomNode_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.TransformInfoDomNode_Access_Array_Access_Array_Access;
   use type TransformInfoDomNode_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype TransformGeneratorUtil_Access is org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References.TransformGeneratorUtil_Access;
   function "=" (Left, Right : TransformGeneratorUtil_Access) return Boolean renames org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References."=";
   subtype TransformGeneratorUtil_Access_Array is org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References.TransformGeneratorUtil_Access_Array;
   function "=" (Left, Right : TransformGeneratorUtil_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References."=";
   subtype TransformGeneratorUtil_Access_Array_Access is org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References.TransformGeneratorUtil_Access_Array_Access;
   function "=" (Left, Right : TransformGeneratorUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References."=";
   function Java_Box (Value : TransformGeneratorUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References.Java_Box;
   function Java_Unbox_TransformGeneratorUtil_Access_Array (Value : access Java_Object'Class) return TransformGeneratorUtil_Access_Array_Access renames org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References.Java_Unbox_TransformGeneratorUtil_Access_Array;
   subtype TransformGeneratorUtil_Access_Array_Access_Array is org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References.TransformGeneratorUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TransformGeneratorUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References."=";
   subtype TransformGeneratorUtil_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References.TransformGeneratorUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformGeneratorUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References."=";
   function Java_Box (Value : TransformGeneratorUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References.Java_Box;
   function Java_Unbox_TransformGeneratorUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformGeneratorUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package_References.Java_Unbox_TransformGeneratorUtil_Access_Array_Access_Array;

   type TransformGeneratorUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformGeneratorUtil_Access;

   procedure Initialize (This : in out TransformGeneratorUtil'Class);
   function Create return TransformGeneratorUtil_Access;
   function getInstance return TransformGeneratorUtil_Access;
   procedure generate (This : in out TransformGeneratorUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; ownerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   procedure generate (This : in out TransformGeneratorUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoDomNode_Param : access TransformInfoDomNode_Package.TransformInfoDomNode'Class; ownerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);

end org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package;


