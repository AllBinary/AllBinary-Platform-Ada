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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.customizer.CustomizerUtil_Package; use views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
with views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package; use views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package;
with views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package; use views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package;

package views.business.context.modules.storefront.customizer.bodies.generic_Id.title.InsertTitleBodyValidationView_Package is

   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package RequestParams_Package renames org.allbinary.logic.communication.http.request.RequestParams_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TitleBodyValidation_Package renames org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package CustomizerUtil_Package renames views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
   package StoreCustomizerComponentUtil_Package renames views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package;

   type InsertTitleBodyValidationView is tagged;
   type InsertTitleBodyValidationView_Access is access all InsertTitleBodyValidationView'Class;
   type InsertTitleBodyValidationView_Access_Array is array (Natural range <>) of InsertTitleBodyValidationView_Access;
   type InsertTitleBodyValidationView_Access_Array_Access is access all InsertTitleBodyValidationView_Access_Array;

   type InsertTitleBodyValidationView is new TitleBodyCustomizerView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out InsertTitleBodyValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return InsertTitleBodyValidationView_Access;
   function toXmlDoc (This : in out InsertTitleBodyValidationView) return Document_Access;
   procedure toXmlDoc (This : in out InsertTitleBodyValidationView);
   function isValid (This : in out InsertTitleBodyValidationView) return Boolean;
   procedure isValid (This : in out InsertTitleBodyValidationView);
   function validationInfo (This : in out InsertTitleBodyValidationView) return Unbounded_String;
   procedure validationInfo (This : in out InsertTitleBodyValidationView);
   function toValidationInfoDoc (This : in out InsertTitleBodyValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out InsertTitleBodyValidationView);
   function toValidationInfoNode (This : in out InsertTitleBodyValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out InsertTitleBodyValidationView; document : Document_Access);
   function view (This : in out InsertTitleBodyValidationView) return Unbounded_String;
   procedure view (This : in out InsertTitleBodyValidationView);

end views.business.context.modules.storefront.customizer.bodies.generic_Id.title.InsertTitleBodyValidationView_Package;


