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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with admin.taghelpers.OrderHistoryHelperFactory_Package; use admin.taghelpers.OrderHistoryHelperFactory_Package;
with admin.taghelpers.OrderHistoryRequestHelperFactory_Package; use admin.taghelpers.OrderHistoryRequestHelperFactory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.OrderHistoryTag_Package is

   package OrderHistoryHelperFactory_Package renames Standard.admin.taghelpers.OrderHistoryHelperFactory_Package;
   package OrderHistoryRequestHelperFactory_Package renames Standard.admin.taghelpers.OrderHistoryRequestHelperFactory_Package;
   package OrderHistoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type OrderHistoryTag is tagged;
   type OrderHistoryTag_Access is access all OrderHistoryTag'Class;
   type OrderHistoryTag_Access_Array is array (Natural range <>) of OrderHistoryTag_Access;
   type OrderHistoryTag_Access_Array_Access is access all OrderHistoryTag_Access_Array;

   type OrderHistoryTag is new TableTag with record
      logUtil : LogUtil_Access;
      status : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderHistoryTag'Class);
   function Create return OrderHistoryTag_Access;
   procedure setStatus (This : in out OrderHistoryTag; value : Unbounded_String);
   function setOrderStatus (This : in out OrderHistoryTag) return Unbounded_String;
   procedure setOrderStatus (This : in out OrderHistoryTag);
   function doStartTag (This : in out OrderHistoryTag) return Integer;
   procedure doStartTag (This : in out OrderHistoryTag);

end admin.tags.OrderHistoryTag_Package;


