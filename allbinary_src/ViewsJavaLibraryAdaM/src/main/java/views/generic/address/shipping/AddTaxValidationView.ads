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
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.commerce.money.tax.TaxFactory_Package; use org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
with org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package; use org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;
with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package; use org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.generic_Id.address.shipping.ShippingAddressView_Package; use views.generic_Id.address.shipping.ShippingAddressView_Package;

package views.generic_Id.address.shipping.AddTaxValidationView_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontFactory_Package renames org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ShippingAddressData_Package renames org.allbinary.business.user.address.ShippingAddressData_Package;
   package StreetAddress_Package renames org.allbinary.business.user.address.StreetAddress_Package;
   package TaxFactory_Package renames org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
   package TaxModuleInterface_Package renames org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;
   package ShippingAddressesEntity_Package renames org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type AddTaxValidationView is tagged;
   type AddTaxValidationView_Access is access all AddTaxValidationView'Class;
   type AddTaxValidationView_Access_Array is array (Natural range <>) of AddTaxValidationView_Access;
   type AddTaxValidationView_Access_Array_Access is access all AddTaxValidationView_Access_Array;

   type AddTaxValidationView is new ShippingAddressView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out AddTaxValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return AddTaxValidationView_Access;
   function isValid (This : in out AddTaxValidationView) return Boolean;
   procedure isValid (This : in out AddTaxValidationView);
   function validationInfo (This : in out AddTaxValidationView) return Unbounded_String;
   procedure validationInfo (This : in out AddTaxValidationView);
   function toValidationInfoDoc (This : in out AddTaxValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out AddTaxValidationView);
   function toValidationInfoNode (This : in out AddTaxValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out AddTaxValidationView; document : Document_Access);

end views.generic_Id.address.shipping.AddTaxValidationView_Package;


