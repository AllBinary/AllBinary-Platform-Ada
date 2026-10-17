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
with org.allbinary.business.page.PageData_Package; use org.allbinary.business.page.PageData_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.StoreTransformer_Package; use org.allbinary.logic.visual.transform.StoreTransformer_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation_Package;
with org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package; use org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
with org.apache.commons.lang3.StringEscapeUtils_Package; use org.apache.commons.lang3.StringEscapeUtils_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.modules.storefront.customizer.bodies.generic_Id.GenericBodyCustomizerView_Package is

   package PageData_Package renames org.allbinary.business.page.PageData_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package XmlDocumentHelper_Package renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package StoreTransformer_Package renames org.allbinary.logic.visual.transform.StoreTransformer_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package GenericBodyValidation_Package renames org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation_Package;
   package TransformTemplateCustomizerUtil_Package renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
   package StringEscapeUtils_Package renames org.apache.commons.lang3.StringEscapeUtils_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type GenericBodyCustomizerView is tagged;
   type GenericBodyCustomizerView_Access is access all GenericBodyCustomizerView'Class;
   type GenericBodyCustomizerView_Access_Array is array (Natural range <>) of GenericBodyCustomizerView_Access;
   type GenericBodyCustomizerView_Access_Array_Access is access all GenericBodyCustomizerView_Access_Array;

   type GenericBodyCustomizerView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      body_Id : GenericBodyValidation_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out GenericBodyCustomizerView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return GenericBodyCustomizerView_Access;
   procedure addDomNodeInterfaces (This : in out GenericBodyCustomizerView);
   function toXmlNode (This : in out GenericBodyCustomizerView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out GenericBodyCustomizerView; document : Document_Access);
   function view (This : in out GenericBodyCustomizerView) return Unbounded_String;
   procedure view (This : in out GenericBodyCustomizerView);

end views.business.context.modules.storefront.customizer.bodies.generic_Id.GenericBodyCustomizerView_Package;


