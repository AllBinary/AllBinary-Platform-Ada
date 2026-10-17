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
with views.admin.payment.gateway.GatewayView_Package; use views.admin.payment.gateway.GatewayView_Package;

package views.admin.payment.gateway.GatewayValidationView_Package is

   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type GatewayValidationView is tagged;
   type GatewayValidationView_Access is access all GatewayValidationView'Class;
   type GatewayValidationView_Access_Array is array (Natural range <>) of GatewayValidationView_Access;
   type GatewayValidationView_Access_Array_Access is access all GatewayValidationView_Access_Array;

   type GatewayValidationView is new HttpStoreComponentView and ValidationComponentInterface with null record;

   procedure Initialize (This : in out GatewayValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return GatewayValidationView_Access;
   function isValid (This : in out GatewayValidationView) return Boolean;
   function toValidationInfoDoc (This : in out GatewayValidationView) return Document_Access;
   function toValidationInfoNode (This : in out GatewayValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out GatewayValidationView; document : Document_Access);
   function validationInfo (This : in out GatewayValidationView) return Unbounded_String;
   function toXmlDoc (This : in out GatewayValidationView) return Document_Access;
   function toXmlNode (This : in out GatewayValidationView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out GatewayValidationView; document : Document_Access);
   function view (This : in out GatewayValidationView) return Unbounded_String;

end views.admin.payment.gateway.GatewayValidationView_Package;


