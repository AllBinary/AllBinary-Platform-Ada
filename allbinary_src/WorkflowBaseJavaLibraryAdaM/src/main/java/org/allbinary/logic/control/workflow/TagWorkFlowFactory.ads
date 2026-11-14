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
limited with org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package;
package org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References is
   type TagWorkFlowFactory_Access is access all org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package.TagWorkFlowFactory'Class;
   type TagWorkFlowFactory_Access_Array is array (Natural range <>) of TagWorkFlowFactory_Access;
   type TagWorkFlowFactory_Access_Array_Access is access all TagWorkFlowFactory_Access_Array;
   type TagWorkFlowFactory_Access_Array_Access_Array is array (Natural range <>) of TagWorkFlowFactory_Access_Array_Access;
   type TagWorkFlowFactory_Access_Array_Access_Array_Access is access all TagWorkFlowFactory_Access_Array_Access_Array;
   type TagWorkFlowFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TagWorkFlowFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TagWorkFlowFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TagWorkFlowFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TagWorkFlowFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TagWorkFlowFactory_Access_Array_Access is (if Value /= null and then Value.all in TagWorkFlowFactory_Access_Array_Object'Class then TagWorkFlowFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TagWorkFlowFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TagWorkFlowFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TagWorkFlowFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TagWorkFlowFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TagWorkFlowFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TagWorkFlowFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TagWorkFlowFactory_Access_Array_Access_Array_Object'Class then TagWorkFlowFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References;

with org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References;
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
limited with org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References;

package org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package is

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
   subtype WorkFlowInterface_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access;
   use type WorkFlowInterface_Access;
   subtype WorkFlowInterface_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array;
   use type WorkFlowInterface_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access;
   use type WorkFlowInterface_Access_Array_Access;
   subtype WorkFlowInterface_Access_Array_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array;
   use type WorkFlowInterface_Access_Array_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array_Access;
   use type WorkFlowInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TagWorkFlowFactory_Access is org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References.TagWorkFlowFactory_Access;
   function "=" (Left, Right : TagWorkFlowFactory_Access) return Boolean renames org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References."=";
   subtype TagWorkFlowFactory_Access_Array is org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References.TagWorkFlowFactory_Access_Array;
   function "=" (Left, Right : TagWorkFlowFactory_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References."=";
   subtype TagWorkFlowFactory_Access_Array_Access is org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References.TagWorkFlowFactory_Access_Array_Access;
   function "=" (Left, Right : TagWorkFlowFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References."=";
   function Java_Box (Value : TagWorkFlowFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References.Java_Box;
   function Java_Unbox_TagWorkFlowFactory_Access_Array (Value : access Java_Object'Class) return TagWorkFlowFactory_Access_Array_Access renames org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References.Java_Unbox_TagWorkFlowFactory_Access_Array;
   subtype TagWorkFlowFactory_Access_Array_Access_Array is org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References.TagWorkFlowFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TagWorkFlowFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References."=";
   subtype TagWorkFlowFactory_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References.TagWorkFlowFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TagWorkFlowFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References."=";
   function Java_Box (Value : TagWorkFlowFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References.Java_Box;
   function Java_Unbox_TagWorkFlowFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TagWorkFlowFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package_References.Java_Unbox_TagWorkFlowFactory_Access_Array_Access_Array;

   type TagWorkFlowFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TagWorkFlowFactory_Access;

   procedure Initialize (This : in out TagWorkFlowFactory'Class);
   function Create return TagWorkFlowFactory_Access;
   function getInstance return TagWorkFlowFactory_Access;
   function getInstance (This : in out TagWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return WorkFlowInterface_Access;
   procedure getInstance (This : in out TagWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package;


