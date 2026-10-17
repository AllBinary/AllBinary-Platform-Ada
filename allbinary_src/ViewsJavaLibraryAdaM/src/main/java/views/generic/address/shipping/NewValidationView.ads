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
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.generic_Id.address.shipping.ShippingAddressView_Package; use views.generic_Id.address.shipping.ShippingAddressView_Package;

package views.generic_Id.address.shipping.NewValidationView_Package is

   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type NewValidationView is tagged;
   type NewValidationView_Access is access all NewValidationView'Class;
   type NewValidationView_Access_Array is array (Natural range <>) of NewValidationView_Access;
   type NewValidationView_Access_Array_Access is access all NewValidationView_Access_Array;

   type NewValidationView is new ShippingAddressView and ValidationComponentInterface with null record;

   procedure Initialize (This : in out NewValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return NewValidationView_Access;
   function isValid (This : in out NewValidationView) return Boolean;
   function validationInfo (This : in out NewValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out NewValidationView) return Document_Access;
   function toValidationInfoNode (This : in out NewValidationView; document_Param : access Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out NewValidationView; document_Param : access Document'Class);

end views.generic_Id.address.shipping.NewValidationView_Package;


