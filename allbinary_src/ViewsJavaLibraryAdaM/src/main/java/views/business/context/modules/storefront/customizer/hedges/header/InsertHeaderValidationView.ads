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
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.request.MultipartRequestParams_Package; use org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.customizer.CustomizerUtil_Package; use views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
with views.business.context.modules.storefront.customizer.hedges.header.TopBarView_Package; use views.business.context.modules.storefront.customizer.hedges.header.TopBarView_Package;

package views.business.context.modules.storefront.customizer.hedges.header.InsertHeaderValidationView_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package MultipartRequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package HeadingValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package;
   package LogoData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package CustomizerUtil_Package renames Standard.views.business.context.modules.storefront.customizer.CustomizerUtil_Package;

   type InsertHeaderValidationView is tagged;
   type InsertHeaderValidationView_Access is access all InsertHeaderValidationView'Class;
   type InsertHeaderValidationView_Access_Array is array (Natural range <>) of InsertHeaderValidationView_Access;
   type InsertHeaderValidationView_Access_Array_Access is access all InsertHeaderValidationView_Access_Array;

   type InsertHeaderValidationView is new TopBarView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
      LOGOPATH : Unbounded_String;
   end record;

   procedure Initialize (This : in out InsertHeaderValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return InsertHeaderValidationView_Access;
   function toXmlDoc (This : in out InsertHeaderValidationView) return Document_Access;
   function isValid (This : in out InsertHeaderValidationView) return Boolean;
   function validationInfo (This : in out InsertHeaderValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out InsertHeaderValidationView) return Document_Access;
   function toValidationInfoNode (This : in out InsertHeaderValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out InsertHeaderValidationView; document_Param : access Document_Package.Document'Class);

end views.business.context.modules.storefront.customizer.hedges.header.InsertHeaderValidationView_Package;


