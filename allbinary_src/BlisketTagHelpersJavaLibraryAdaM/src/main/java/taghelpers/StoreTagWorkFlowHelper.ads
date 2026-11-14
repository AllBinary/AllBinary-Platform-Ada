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
limited with taghelpers.StoreTagWorkFlowHelper_Package;
package taghelpers.StoreTagWorkFlowHelper_Package_References is
   type StoreTagWorkFlowHelper_Access is access all taghelpers.StoreTagWorkFlowHelper_Package.StoreTagWorkFlowHelper'Class;
   type StoreTagWorkFlowHelper_Access_Array is array (Natural range <>) of StoreTagWorkFlowHelper_Access;
   type StoreTagWorkFlowHelper_Access_Array_Access is access all StoreTagWorkFlowHelper_Access_Array;
   type StoreTagWorkFlowHelper_Access_Array_Access_Array is array (Natural range <>) of StoreTagWorkFlowHelper_Access_Array_Access;
   type StoreTagWorkFlowHelper_Access_Array_Access_Array_Access is access all StoreTagWorkFlowHelper_Access_Array_Access_Array;
   type StoreTagWorkFlowHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreTagWorkFlowHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreTagWorkFlowHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreTagWorkFlowHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreTagWorkFlowHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreTagWorkFlowHelper_Access_Array_Access is (if Value /= null and then Value.all in StoreTagWorkFlowHelper_Access_Array_Object'Class then StoreTagWorkFlowHelper_Access_Array_Object'Class (Value.all).Value else null);
   type StoreTagWorkFlowHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreTagWorkFlowHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreTagWorkFlowHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreTagWorkFlowHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreTagWorkFlowHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreTagWorkFlowHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreTagWorkFlowHelper_Access_Array_Access_Array_Object'Class then StoreTagWorkFlowHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end taghelpers.StoreTagWorkFlowHelper_Package_References;

with taghelpers.StoreTagWorkFlowHelper_Package_References;
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
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;
with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package taghelpers.StoreTagWorkFlowHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package TagHelper_Package renames Standard.admin.taghelpers.TagHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StoreWorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;
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
   subtype StoreWorkFlowInterface_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access;
   use type StoreWorkFlowInterface_Access;
   subtype StoreWorkFlowInterface_Access_Array is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array;
   use type StoreWorkFlowInterface_Access_Array;
   subtype StoreWorkFlowInterface_Access_Array_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access;
   use type StoreWorkFlowInterface_Access_Array_Access;
   subtype StoreWorkFlowInterface_Access_Array_Access_Array is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access_Array;
   use type StoreWorkFlowInterface_Access_Array_Access_Array;
   subtype StoreWorkFlowInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access_Array_Access;
   use type StoreWorkFlowInterface_Access_Array_Access_Array_Access;
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


   subtype StoreTagWorkFlowHelper_Access is taghelpers.StoreTagWorkFlowHelper_Package_References.StoreTagWorkFlowHelper_Access;
   function "=" (Left, Right : StoreTagWorkFlowHelper_Access) return Boolean renames taghelpers.StoreTagWorkFlowHelper_Package_References."=";
   subtype StoreTagWorkFlowHelper_Access_Array is taghelpers.StoreTagWorkFlowHelper_Package_References.StoreTagWorkFlowHelper_Access_Array;
   function "=" (Left, Right : StoreTagWorkFlowHelper_Access_Array) return Boolean renames taghelpers.StoreTagWorkFlowHelper_Package_References."=";
   subtype StoreTagWorkFlowHelper_Access_Array_Access is taghelpers.StoreTagWorkFlowHelper_Package_References.StoreTagWorkFlowHelper_Access_Array_Access;
   function "=" (Left, Right : StoreTagWorkFlowHelper_Access_Array_Access) return Boolean renames taghelpers.StoreTagWorkFlowHelper_Package_References."=";
   function Java_Box (Value : StoreTagWorkFlowHelper_Access_Array_Access) return Java_Object_Access renames taghelpers.StoreTagWorkFlowHelper_Package_References.Java_Box;
   function Java_Unbox_StoreTagWorkFlowHelper_Access_Array (Value : access Java_Object'Class) return StoreTagWorkFlowHelper_Access_Array_Access renames taghelpers.StoreTagWorkFlowHelper_Package_References.Java_Unbox_StoreTagWorkFlowHelper_Access_Array;
   subtype StoreTagWorkFlowHelper_Access_Array_Access_Array is taghelpers.StoreTagWorkFlowHelper_Package_References.StoreTagWorkFlowHelper_Access_Array_Access_Array;
   function "=" (Left, Right : StoreTagWorkFlowHelper_Access_Array_Access_Array) return Boolean renames taghelpers.StoreTagWorkFlowHelper_Package_References."=";
   subtype StoreTagWorkFlowHelper_Access_Array_Access_Array_Access is taghelpers.StoreTagWorkFlowHelper_Package_References.StoreTagWorkFlowHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreTagWorkFlowHelper_Access_Array_Access_Array_Access) return Boolean renames taghelpers.StoreTagWorkFlowHelper_Package_References."=";
   function Java_Box (Value : StoreTagWorkFlowHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames taghelpers.StoreTagWorkFlowHelper_Package_References.Java_Box;
   function Java_Unbox_StoreTagWorkFlowHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreTagWorkFlowHelper_Access_Array_Access_Array_Access renames taghelpers.StoreTagWorkFlowHelper_Package_References.Java_Unbox_StoreTagWorkFlowHelper_Access_Array_Access_Array;

   type StoreTagWorkFlowHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      storeWorkFlowInterface : StoreWorkFlowInterface_Access;
   end record;

   procedure Initialize (This : in out StoreTagWorkFlowHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreTagWorkFlowHelper_Access;
   function process (This : in out StoreTagWorkFlowHelper) return Integer;

end taghelpers.StoreTagWorkFlowHelper_Package;


