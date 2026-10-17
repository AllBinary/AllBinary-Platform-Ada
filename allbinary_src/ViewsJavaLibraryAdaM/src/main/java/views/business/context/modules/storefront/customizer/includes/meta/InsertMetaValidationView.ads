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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.customizer.CustomizerUtil_Package; use views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
with views.business.context.modules.storefront.customizer.includes.meta.MetaView_Package; use views.business.context.modules.storefront.customizer.includes.meta.MetaView_Package;

package views.business.context.modules.storefront.customizer.includes.meta.InsertMetaValidationView_Package is

   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package CustomizerUtil_Package renames views.business.context.modules.storefront.customizer.CustomizerUtil_Package;

   type InsertMetaValidationView is tagged;
   type InsertMetaValidationView_Access is access all InsertMetaValidationView'Class;
   type InsertMetaValidationView_Access_Array is array (Natural range <>) of InsertMetaValidationView_Access;
   type InsertMetaValidationView_Access_Array_Access is access all InsertMetaValidationView_Access_Array;

   type InsertMetaValidationView is new MetaView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out InsertMetaValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return InsertMetaValidationView_Access;
   function toXmlDoc (This : in out InsertMetaValidationView) return Document_Access;
   procedure toXmlDoc (This : in out InsertMetaValidationView);
   function isValid (This : in out InsertMetaValidationView) return Boolean;
   procedure isValid (This : in out InsertMetaValidationView);
   function validationInfo (This : in out InsertMetaValidationView) return Unbounded_String;
   procedure validationInfo (This : in out InsertMetaValidationView);
   function toValidationInfoDoc (This : in out InsertMetaValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out InsertMetaValidationView);
   function toValidationInfoNode (This : in out InsertMetaValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out InsertMetaValidationView; document : Document_Access);

end views.business.context.modules.storefront.customizer.includes.meta.InsertMetaValidationView_Package;


