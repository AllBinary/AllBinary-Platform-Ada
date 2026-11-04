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

limited with admin.taghelpers.OrderItemsRequestHelper_Package;
package admin.taghelpers.OrderItemsRequestHelper_Package_References is
   type OrderItemsRequestHelper_Access is access all admin.taghelpers.OrderItemsRequestHelper_Package.OrderItemsRequestHelper'Class;
   type OrderItemsRequestHelper_Access_Array is array (Natural range <>) of OrderItemsRequestHelper_Access;
   type OrderItemsRequestHelper_Access_Array_Access is access all OrderItemsRequestHelper_Access_Array;
   type OrderItemsRequestHelper_Access_Array_Access_Array is array (Natural range <>) of OrderItemsRequestHelper_Access_Array_Access;
   type OrderItemsRequestHelper_Access_Array_Access_Array_Access is access all OrderItemsRequestHelper_Access_Array_Access_Array;
end admin.taghelpers.OrderItemsRequestHelper_Package_References;

with admin.taghelpers.OrderItemsRequestHelper_Package_References;
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
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.OrderItemsRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype OrderItemsRequestHelper_Access is admin.taghelpers.OrderItemsRequestHelper_Package_References.OrderItemsRequestHelper_Access;
   function "=" (Left, Right : OrderItemsRequestHelper_Access) return Boolean renames admin.taghelpers.OrderItemsRequestHelper_Package_References."=";
   subtype OrderItemsRequestHelper_Access_Array is admin.taghelpers.OrderItemsRequestHelper_Package_References.OrderItemsRequestHelper_Access_Array;
   function "=" (Left, Right : OrderItemsRequestHelper_Access_Array) return Boolean renames admin.taghelpers.OrderItemsRequestHelper_Package_References."=";
   subtype OrderItemsRequestHelper_Access_Array_Access is admin.taghelpers.OrderItemsRequestHelper_Package_References.OrderItemsRequestHelper_Access_Array_Access;
   function "=" (Left, Right : OrderItemsRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.OrderItemsRequestHelper_Package_References."=";
   subtype OrderItemsRequestHelper_Access_Array_Access_Array is admin.taghelpers.OrderItemsRequestHelper_Package_References.OrderItemsRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : OrderItemsRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.OrderItemsRequestHelper_Package_References."=";
   subtype OrderItemsRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.OrderItemsRequestHelper_Package_References.OrderItemsRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderItemsRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.OrderItemsRequestHelper_Package_References."=";

   type OrderItemsRequestHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      id : Unbounded_String;
      groupId : Unbounded_String;
      status : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderItemsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return OrderItemsRequestHelper_Access;
   procedure getFormData (This : in out OrderItemsRequestHelper);
   function setOrderStatus (This : in out OrderItemsRequestHelper; newStatus_Param : Unbounded_String) return Unbounded_String;
   procedure setOrderStatus (This : in out OrderItemsRequestHelper; newStatus_Param : Unbounded_String);
   function setOrderStatus (This : in out OrderItemsRequestHelper) return Unbounded_String;

end admin.taghelpers.OrderItemsRequestHelper_Package;


