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
with admin.taghelpers.ShippingAddressHelperFactory_Package; use admin.taghelpers.ShippingAddressHelperFactory_Package;
with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.ShippingAddressTag_Package is

   package ShippingAddressHelperFactory_Package renames admin.taghelpers.ShippingAddressHelperFactory_Package;
   package ShippingAddressData_Package renames org.allbinary.business.user.address.ShippingAddressData_Package;
   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type ShippingAddressTag is tagged;
   type ShippingAddressTag_Access is access all ShippingAddressTag'Class;
   type ShippingAddressTag_Access_Array is array (Natural range <>) of ShippingAddressTag_Access;
   type ShippingAddressTag_Access_Array_Access is access all ShippingAddressTag_Access_Array;

   type ShippingAddressTag is new TableTag with record
      logUtil : LogUtil_Access;
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out ShippingAddressTag'Class);
   function Create return ShippingAddressTag_Access;
   procedure setValue (This : in out ShippingAddressTag; value : Unbounded_String);
   function set (This : in out ShippingAddressTag) return Unbounded_String;
   procedure set (This : in out ShippingAddressTag);
   function setToBillingAddress (This : in out ShippingAddressTag) return Unbounded_String;
   procedure setToBillingAddress (This : in out ShippingAddressTag);
   function doStartTag (This : in out ShippingAddressTag) return Integer;
   procedure doStartTag (This : in out ShippingAddressTag);

end admin.tags.ShippingAddressTag_Package;


