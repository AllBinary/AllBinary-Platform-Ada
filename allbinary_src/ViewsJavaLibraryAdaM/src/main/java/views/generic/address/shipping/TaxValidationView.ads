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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package; use org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.generic_Id.address.shipping.ShippingAddressView_Package; use views.generic_Id.address.shipping.ShippingAddressView_Package;

package views.generic_Id.address.shipping.TaxValidationView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ShippingAddressData_Package renames Standard.org.allbinary.business.user.address.ShippingAddressData_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package ShippingAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TaxValidationView is tagged;
   type TaxValidationView_Access is access all TaxValidationView'Class;
   type TaxValidationView_Access_Array is array (Natural range <>) of TaxValidationView_Access;
   type TaxValidationView_Access_Array_Access is access all TaxValidationView_Access_Array;

   type TaxValidationView is new ShippingAddressView and ValidationComponentInterface with null record;

   procedure Initialize (This : in out TaxValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return TaxValidationView_Access;
   function isValid (This : in out TaxValidationView) return Boolean;
   function validationInfo (This : in out TaxValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out TaxValidationView) return Document_Access;
   function toValidationInfoNode (This : in out TaxValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out TaxValidationView; document : Document_Access);

end views.generic_Id.address.shipping.TaxValidationView_Package;


