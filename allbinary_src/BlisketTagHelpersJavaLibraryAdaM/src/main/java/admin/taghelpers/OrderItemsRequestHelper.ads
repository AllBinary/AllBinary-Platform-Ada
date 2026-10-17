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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.OrderItemsRequestHelper_Package is

   package OrderData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package OrderHistoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package ShippingMethodData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
   package OrderItemsEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type OrderItemsRequestHelper is tagged;
   type OrderItemsRequestHelper_Access is access all OrderItemsRequestHelper'Class;
   type OrderItemsRequestHelper_Access_Array is array (Natural range <>) of OrderItemsRequestHelper_Access;
   type OrderItemsRequestHelper_Access_Array_Access is access all OrderItemsRequestHelper_Access_Array;

   type OrderItemsRequestHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      id : Unbounded_String;
      groupId : Unbounded_String;
      status : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderItemsRequestHelper'Class; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class);
   function Create (hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return OrderItemsRequestHelper_Access;
   procedure getFormData (This : in out OrderItemsRequestHelper);
   function setOrderStatus (This : in out OrderItemsRequestHelper; newStatus_Param : Unbounded_String) return Unbounded_String;
   procedure setOrderStatus (This : in out OrderItemsRequestHelper; newStatus_Param : Unbounded_String);
   function setOrderStatus (This : in out OrderItemsRequestHelper) return Unbounded_String;

end admin.taghelpers.OrderItemsRequestHelper_Package;


