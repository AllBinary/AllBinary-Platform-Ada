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
with admin.taghelpers.BillingAddressHelperFactory_Package; use admin.taghelpers.BillingAddressHelperFactory_Package;
with org.allbinary.business.user.address.BillingAddressData_Package; use org.allbinary.business.user.address.BillingAddressData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.BillingAddressTag_Package is

   package BillingAddressHelperFactory_Package renames Standard.admin.taghelpers.BillingAddressHelperFactory_Package;
   package BillingAddressData_Package renames Standard.org.allbinary.business.user.address.BillingAddressData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type BillingAddressTag is tagged;
   type BillingAddressTag_Access is access all BillingAddressTag'Class;
   type BillingAddressTag_Access_Array is array (Natural range <>) of BillingAddressTag_Access;
   type BillingAddressTag_Access_Array_Access is access all BillingAddressTag_Access_Array;

   type BillingAddressTag is new TableTag with record
      logUtil : LogUtil_Access;
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out BillingAddressTag'Class);
   function Create return BillingAddressTag_Access;
   procedure setValue (This : in out BillingAddressTag; value : Unbounded_String);
   function set (This : in out BillingAddressTag) return Unbounded_String;
   function setToShippingAddress (This : in out BillingAddressTag) return Unbounded_String;
   function doStartTag (This : in out BillingAddressTag) return Integer;

end admin.tags.BillingAddressTag_Package;


