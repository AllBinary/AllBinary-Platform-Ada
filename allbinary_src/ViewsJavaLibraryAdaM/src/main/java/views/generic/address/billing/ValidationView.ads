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
with org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package; use org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.generic_Id.address.billing.BillingAddressesView_Package; use views.generic_Id.address.billing.BillingAddressesView_Package;

package views.generic_Id.address.billing.ValidationView_Package is

   package BillingAddressesEntity_Package renames org.allbinary.data.tables.user.address.billing.BillingAddressesEntity_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type ValidationView is tagged;
   type ValidationView_Access is access all ValidationView'Class;
   type ValidationView_Access_Array is array (Natural range <>) of ValidationView_Access;
   type ValidationView_Access_Array_Access is access all ValidationView_Access_Array;

   type ValidationView is new BillingAddressesView and ValidationComponentInterface with null record;

   procedure Initialize (This : in out ValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return ValidationView_Access;
   function isValid (This : in out ValidationView) return Boolean;
   procedure isValid (This : in out ValidationView);
   function validationInfo (This : in out ValidationView) return Unbounded_String;
   procedure validationInfo (This : in out ValidationView);
   function toValidationInfoDoc (This : in out ValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out ValidationView);
   function toValidationInfoNode (This : in out ValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out ValidationView; document : Document_Access);

end views.generic_Id.address.billing.ValidationView_Package;


