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

package views.admin.payment.gateways.SelectExistingValidationView_Package is

   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type SelectExistingValidationView is tagged;
   type SelectExistingValidationView_Access is access all SelectExistingValidationView'Class;
   type SelectExistingValidationView_Access_Array is array (Natural range <>) of SelectExistingValidationView_Access;
   type SelectExistingValidationView_Access_Array_Access is access all SelectExistingValidationView_Access_Array;
   type SelectExistingValidationView_Access_Array_Access_Array is array (Natural range <>) of SelectExistingValidationView_Access_Array_Access;
   type SelectExistingValidationView_Access_Array_Access_Array_Access is access all SelectExistingValidationView_Access_Array_Access_Array;

   type SelectExistingValidationView is new HttpStoreComponentView and ValidationComponentInterface with null record;

   procedure Initialize (This : in out SelectExistingValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return SelectExistingValidationView_Access;
   function isValid (This : in out SelectExistingValidationView) return Boolean;
   function toValidationInfoDoc (This : in out SelectExistingValidationView) return Document_Access;
   function toValidationInfoNode (This : in out SelectExistingValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out SelectExistingValidationView; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out SelectExistingValidationView) return Unbounded_String;
   function toXmlDoc (This : in out SelectExistingValidationView) return Document_Access;
   function toXmlNode (This : in out SelectExistingValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out SelectExistingValidationView; document_Param : access Document_Package.Document'Class);
   function view (This : in out SelectExistingValidationView) return Unbounded_String;

end views.admin.payment.gateways.SelectExistingValidationView_Package;


