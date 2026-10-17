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
with org.allbinary.business.user.address.StreetAddressData_Package; use org.allbinary.business.user.address.StreetAddressData_Package;
with org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package; use org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.generic_Id.address.billing.BillingAddressView_Package; use views.generic_Id.address.billing.BillingAddressView_Package;

package views.generic_Id.address.billing.DeleteValidationView_Package is

   package StreetAddressData_Package renames Standard.org.allbinary.business.user.address.StreetAddressData_Package;
   package BillingAddressesEntity_Package renames Standard.org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type DeleteValidationView is tagged;
   type DeleteValidationView_Access is access all DeleteValidationView'Class;
   type DeleteValidationView_Access_Array is array (Natural range <>) of DeleteValidationView_Access;
   type DeleteValidationView_Access_Array_Access is access all DeleteValidationView_Access_Array;

   type DeleteValidationView is new BillingAddressView and ValidationComponentInterface with record
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out DeleteValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DeleteValidationView_Access;
   function isValid (This : in out DeleteValidationView) return Boolean;
   function validationInfo (This : in out DeleteValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out DeleteValidationView) return Document_Access;
   function toValidationInfoNode (This : in out DeleteValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out DeleteValidationView; document_Param : access Document_Package.Document'Class);

end views.generic_Id.address.billing.DeleteValidationView_Package;


