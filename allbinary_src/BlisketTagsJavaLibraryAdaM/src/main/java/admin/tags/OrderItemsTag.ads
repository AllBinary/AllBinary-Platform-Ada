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
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with admin.taghelpers.OrderItemsHelperFactory_Package; use admin.taghelpers.OrderItemsHelperFactory_Package;
with admin.taghelpers.OrderItemsRequestHelperFactory_Package; use admin.taghelpers.OrderItemsRequestHelperFactory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.OrderItemsTag_Package is

   package OrderItemsHelperFactory_Package renames admin.taghelpers.OrderItemsHelperFactory_Package;
   package OrderItemsRequestHelperFactory_Package renames admin.taghelpers.OrderItemsRequestHelperFactory_Package;
   package OrderHistoryData_Package renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type OrderItemsTag is tagged;
   type OrderItemsTag_Access is access all OrderItemsTag'Class;
   type OrderItemsTag_Access_Array is array (Natural range <>) of OrderItemsTag_Access;
   type OrderItemsTag_Access_Array_Access is access all OrderItemsTag_Access_Array;

   type OrderItemsTag is new TableTag with record
      logUtil : LogUtil_Access;
      status : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderItemsTag'Class);
   function Create return OrderItemsTag_Access;
   procedure setStatus (This : in out OrderItemsTag; value : Unbounded_String);
   function setOrderStatus (This : in out OrderItemsTag) return Unbounded_String;
   procedure setOrderStatus (This : in out OrderItemsTag);
   function doStartTag (This : in out OrderItemsTag) return Integer;
   procedure doStartTag (This : in out OrderItemsTag);

end admin.tags.OrderItemsTag_Package;


