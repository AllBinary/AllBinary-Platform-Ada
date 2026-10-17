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
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.payment.gateways.SelectNewValidationView_Package is

   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type SelectNewValidationView is tagged;
   type SelectNewValidationView_Access is access all SelectNewValidationView'Class;
   type SelectNewValidationView_Access_Array is array (Natural range <>) of SelectNewValidationView_Access;
   type SelectNewValidationView_Access_Array_Access is access all SelectNewValidationView_Access_Array;

   type SelectNewValidationView is new HttpStoreComponentView and ValidationComponentInterface with null record;

   procedure Initialize (This : in out SelectNewValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return SelectNewValidationView_Access;
   function isValid (This : in out SelectNewValidationView) return Boolean;
   procedure isValid (This : in out SelectNewValidationView);
   function toValidationInfoDoc (This : in out SelectNewValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out SelectNewValidationView);
   function toValidationInfoNode (This : in out SelectNewValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out SelectNewValidationView; document : Document_Access);
   function validationInfo (This : in out SelectNewValidationView) return Unbounded_String;
   procedure validationInfo (This : in out SelectNewValidationView);
   function toXmlDoc (This : in out SelectNewValidationView) return Document_Access;
   procedure toXmlDoc (This : in out SelectNewValidationView);
   function toXmlNode (This : in out SelectNewValidationView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out SelectNewValidationView; document : Document_Access);
   function view (This : in out SelectNewValidationView) return Unbounded_String;
   procedure view (This : in out SelectNewValidationView);

end views.admin.payment.gateways.SelectNewValidationView_Package;


