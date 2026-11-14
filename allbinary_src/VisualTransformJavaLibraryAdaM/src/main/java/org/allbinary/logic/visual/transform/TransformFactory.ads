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
limited with org.allbinary.logic.visual.transform.TransformFactory_Package;
package org.allbinary.logic.visual.transform.TransformFactory_Package_References is
   type TransformFactory_Access is access all org.allbinary.logic.visual.transform.TransformFactory_Package.TransformFactory'Class;
   type TransformFactory_Access_Array is array (Natural range <>) of TransformFactory_Access;
   type TransformFactory_Access_Array_Access is access all TransformFactory_Access_Array;
   type TransformFactory_Access_Array_Access_Array is array (Natural range <>) of TransformFactory_Access_Array_Access;
   type TransformFactory_Access_Array_Access_Array_Access is access all TransformFactory_Access_Array_Access_Array;
   type TransformFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformFactory_Access_Array_Access is (if Value /= null and then Value.all in TransformFactory_Access_Array_Object'Class then TransformFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TransformFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformFactory_Access_Array_Access_Array_Object'Class then TransformFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.TransformFactory_Package_References;

with org.allbinary.logic.visual.transform.TransformFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package_References;

package org.allbinary.logic.visual.transform.TransformFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
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
   subtype TransformInterface_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access;
   use type TransformInterface_Access;
   subtype TransformInterface_Access_Array is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array;
   use type TransformInterface_Access_Array;
   subtype TransformInterface_Access_Array_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access;
   use type TransformInterface_Access_Array_Access;
   subtype TransformInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access_Array;
   use type TransformInterface_Access_Array_Access_Array;
   subtype TransformInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access_Array_Access;
   use type TransformInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformFactory_Access is org.allbinary.logic.visual.transform.TransformFactory_Package_References.TransformFactory_Access;
   function "=" (Left, Right : TransformFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformFactory_Package_References."=";
   subtype TransformFactory_Access_Array is org.allbinary.logic.visual.transform.TransformFactory_Package_References.TransformFactory_Access_Array;
   function "=" (Left, Right : TransformFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.TransformFactory_Package_References."=";
   subtype TransformFactory_Access_Array_Access is org.allbinary.logic.visual.transform.TransformFactory_Package_References.TransformFactory_Access_Array_Access;
   function "=" (Left, Right : TransformFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformFactory_Package_References."=";
   function Java_Box (Value : TransformFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.TransformFactory_Package_References.Java_Box;
   function Java_Unbox_TransformFactory_Access_Array (Value : access Java_Object'Class) return TransformFactory_Access_Array_Access renames org.allbinary.logic.visual.transform.TransformFactory_Package_References.Java_Unbox_TransformFactory_Access_Array;
   subtype TransformFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.TransformFactory_Package_References.TransformFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.TransformFactory_Package_References."=";
   subtype TransformFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.TransformFactory_Package_References.TransformFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.TransformFactory_Package_References."=";
   function Java_Box (Value : TransformFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.TransformFactory_Package_References.Java_Box;
   function Java_Unbox_TransformFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.TransformFactory_Package_References.Java_Unbox_TransformFactory_Access_Array_Access_Array;

   type TransformFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : TransformFactory_Access;

   procedure Initialize (This : in out TransformFactory'Class);
   function Create return TransformFactory_Access;
   function getInstance return TransformFactory_Access;
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; viewName : Unbounded_String; ownerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInterface_Access;
   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; viewName : Unbounded_String; ownerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInterface_Access;
   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInterface_Access;
   procedure getInstance (This : in out TransformFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);

end org.allbinary.logic.visual.transform.TransformFactory_Package;


