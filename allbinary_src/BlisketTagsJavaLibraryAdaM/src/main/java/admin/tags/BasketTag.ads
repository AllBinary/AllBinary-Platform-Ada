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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with admin.taghelpers.BasketHelperFactory_Package; use admin.taghelpers.BasketHelperFactory_Package;
with admin.taghelpers.BasketRequestHelperFactory_Package; use admin.taghelpers.BasketRequestHelperFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketData_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.BasketTag_Package is

   package BasketHelperFactory_Package renames Standard.admin.taghelpers.BasketHelperFactory_Package;
   package BasketRequestHelperFactory_Package renames Standard.admin.taghelpers.BasketRequestHelperFactory_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package BasketData_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CustomTagSupport_Package renames Standard.tags.CustomTagSupport_Package;

   type BasketTag is tagged;
   type BasketTag_Access is access all BasketTag'Class;
   type BasketTag_Access_Array is array (Natural range <>) of BasketTag_Access;
   type BasketTag_Access_Array_Access is access all BasketTag_Access_Array;

   type BasketTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      command : Unbounded_String;
      storeName : Unbounded_String;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out BasketTag'Class);
   function Create return BasketTag_Access;
   procedure setCommand (This : in out BasketTag; command : Unbounded_String);
   procedure setStoreName (This : in out BasketTag; value : Unbounded_String);
   function isBasketEmpty (This : in out BasketTag) return Boolean;
   function addItemToBasket (This : in out BasketTag) return Boolean;
   function removeItemFromBasket (This : in out BasketTag) return Boolean;
   function adjustBasket (This : in out BasketTag) return Boolean;
   function doStartTag (This : in out BasketTag) return Integer;

end admin.tags.BasketTag_Package;


