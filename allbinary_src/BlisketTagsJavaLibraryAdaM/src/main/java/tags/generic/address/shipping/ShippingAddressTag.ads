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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.generic_Id.address.shipping.ShippingAddressTag_Package is

   package ShippingAddressData_Package renames Standard.org.allbinary.business.user.address.ShippingAddressData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;

   type ShippingAddressTag is tagged;
   type ShippingAddressTag_Access is access all ShippingAddressTag'Class;
   type ShippingAddressTag_Access_Array is array (Natural range <>) of ShippingAddressTag_Access;
   type ShippingAddressTag_Access_Array_Access is access all ShippingAddressTag_Access_Array;

   type ShippingAddressTag is new StoreValidationTransformTag with record
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out ShippingAddressTag'Class);
   function Create return ShippingAddressTag_Access;
   function doStartTag (This : in out ShippingAddressTag) return Integer;

end tags.generic_Id.address.shipping.ShippingAddressTag_Package;


