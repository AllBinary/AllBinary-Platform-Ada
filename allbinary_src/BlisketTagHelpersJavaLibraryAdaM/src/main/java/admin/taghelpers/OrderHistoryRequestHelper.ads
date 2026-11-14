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
limited with admin.taghelpers.OrderHistoryRequestHelper_Package;
package admin.taghelpers.OrderHistoryRequestHelper_Package_References is
   type OrderHistoryRequestHelper_Access is access all admin.taghelpers.OrderHistoryRequestHelper_Package.OrderHistoryRequestHelper'Class;
   type OrderHistoryRequestHelper_Access_Array is array (Natural range <>) of OrderHistoryRequestHelper_Access;
   type OrderHistoryRequestHelper_Access_Array_Access is access all OrderHistoryRequestHelper_Access_Array;
   type OrderHistoryRequestHelper_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryRequestHelper_Access_Array_Access;
   type OrderHistoryRequestHelper_Access_Array_Access_Array_Access is access all OrderHistoryRequestHelper_Access_Array_Access_Array;
   type OrderHistoryRequestHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryRequestHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryRequestHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryRequestHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryRequestHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryRequestHelper_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryRequestHelper_Access_Array_Object'Class then OrderHistoryRequestHelper_Access_Array_Object'Class (Value.all).Value else null);
   type OrderHistoryRequestHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryRequestHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryRequestHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryRequestHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryRequestHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryRequestHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryRequestHelper_Access_Array_Access_Array_Object'Class then OrderHistoryRequestHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.OrderHistoryRequestHelper_Package_References;

with admin.taghelpers.OrderHistoryRequestHelper_Package_References;
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
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.OrderHistoryRequestHelper_Package is

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


   subtype OrderHistoryRequestHelper_Access is admin.taghelpers.OrderHistoryRequestHelper_Package_References.OrderHistoryRequestHelper_Access;
   function "=" (Left, Right : OrderHistoryRequestHelper_Access) return Boolean renames admin.taghelpers.OrderHistoryRequestHelper_Package_References."=";
   subtype OrderHistoryRequestHelper_Access_Array is admin.taghelpers.OrderHistoryRequestHelper_Package_References.OrderHistoryRequestHelper_Access_Array;
   function "=" (Left, Right : OrderHistoryRequestHelper_Access_Array) return Boolean renames admin.taghelpers.OrderHistoryRequestHelper_Package_References."=";
   subtype OrderHistoryRequestHelper_Access_Array_Access is admin.taghelpers.OrderHistoryRequestHelper_Package_References.OrderHistoryRequestHelper_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.OrderHistoryRequestHelper_Package_References."=";
   function Java_Box (Value : OrderHistoryRequestHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.OrderHistoryRequestHelper_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryRequestHelper_Access_Array (Value : access Java_Object'Class) return OrderHistoryRequestHelper_Access_Array_Access renames admin.taghelpers.OrderHistoryRequestHelper_Package_References.Java_Unbox_OrderHistoryRequestHelper_Access_Array;
   subtype OrderHistoryRequestHelper_Access_Array_Access_Array is admin.taghelpers.OrderHistoryRequestHelper_Package_References.OrderHistoryRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.OrderHistoryRequestHelper_Package_References."=";
   subtype OrderHistoryRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.OrderHistoryRequestHelper_Package_References.OrderHistoryRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.OrderHistoryRequestHelper_Package_References."=";
   function Java_Box (Value : OrderHistoryRequestHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.OrderHistoryRequestHelper_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryRequestHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderHistoryRequestHelper_Access_Array_Access_Array_Access renames admin.taghelpers.OrderHistoryRequestHelper_Package_References.Java_Unbox_OrderHistoryRequestHelper_Access_Array_Access_Array;

   type OrderHistoryRequestHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      request : HttpServletRequest_Access;
      id : Unbounded_String;
      groupId : Unbounded_String;
      status : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderHistoryRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return OrderHistoryRequestHelper_Access;
   procedure getFormData (This : in out OrderHistoryRequestHelper);
   function setOrderStatus (This : in out OrderHistoryRequestHelper) return Unbounded_String;
   function setOrderStatus (This : in out OrderHistoryRequestHelper; newStatus_Param : Unbounded_String) return Unbounded_String;
   procedure setOrderStatus (This : in out OrderHistoryRequestHelper; newStatus_Param : Unbounded_String);

end admin.taghelpers.OrderHistoryRequestHelper_Package;


