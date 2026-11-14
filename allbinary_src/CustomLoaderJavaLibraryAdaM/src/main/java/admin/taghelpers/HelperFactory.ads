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
limited with admin.taghelpers.HelperFactory_Package;
package admin.taghelpers.HelperFactory_Package_References is
   type HelperFactory_Access is access all admin.taghelpers.HelperFactory_Package.HelperFactory'Class;
   type HelperFactory_Access_Array is array (Natural range <>) of HelperFactory_Access;
   type HelperFactory_Access_Array_Access is access all HelperFactory_Access_Array;
   type HelperFactory_Access_Array_Access_Array is array (Natural range <>) of HelperFactory_Access_Array_Access;
   type HelperFactory_Access_Array_Access_Array_Access is access all HelperFactory_Access_Array_Access_Array;
   type HelperFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HelperFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : HelperFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HelperFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HelperFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HelperFactory_Access_Array_Access is (if Value /= null and then Value.all in HelperFactory_Access_Array_Object'Class then HelperFactory_Access_Array_Object'Class (Value.all).Value else null);
   type HelperFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HelperFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HelperFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HelperFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HelperFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HelperFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HelperFactory_Access_Array_Access_Array_Object'Class then HelperFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.HelperFactory_Package_References;

with admin.taghelpers.HelperFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package admin.taghelpers.HelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype HelperFactory_Access is admin.taghelpers.HelperFactory_Package_References.HelperFactory_Access;
   function "=" (Left, Right : HelperFactory_Access) return Boolean renames admin.taghelpers.HelperFactory_Package_References."=";
   subtype HelperFactory_Access_Array is admin.taghelpers.HelperFactory_Package_References.HelperFactory_Access_Array;
   function "=" (Left, Right : HelperFactory_Access_Array) return Boolean renames admin.taghelpers.HelperFactory_Package_References."=";
   subtype HelperFactory_Access_Array_Access is admin.taghelpers.HelperFactory_Package_References.HelperFactory_Access_Array_Access;
   function "=" (Left, Right : HelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.HelperFactory_Package_References."=";
   function Java_Box (Value : HelperFactory_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.HelperFactory_Package_References.Java_Box;
   function Java_Unbox_HelperFactory_Access_Array (Value : access Java_Object'Class) return HelperFactory_Access_Array_Access renames admin.taghelpers.HelperFactory_Package_References.Java_Unbox_HelperFactory_Access_Array;
   subtype HelperFactory_Access_Array_Access_Array is admin.taghelpers.HelperFactory_Package_References.HelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.HelperFactory_Package_References."=";
   subtype HelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.HelperFactory_Package_References.HelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.HelperFactory_Package_References."=";
   function Java_Box (Value : HelperFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.HelperFactory_Package_References.Java_Box;
   function Java_Unbox_HelperFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return HelperFactory_Access_Array_Access_Array_Access renames admin.taghelpers.HelperFactory_Package_References.Java_Unbox_HelperFactory_Access_Array_Access_Array;

   type HelperFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out HelperFactory'Class);
   function Create return HelperFactory_Access;
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return Java_Object_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; specialhashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class; specialhashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String) return Java_Object_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; factoryName : Unbounded_String; className : Unbounded_String);

end admin.taghelpers.HelperFactory_Package;


