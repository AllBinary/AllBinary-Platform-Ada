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
with org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package;
with org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package; use org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
with org.apache.commons.lang3.StringEscapeUtils_Package; use org.apache.commons.lang3.StringEscapeUtils_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package is

   package PageData_Package renames Standard.org.allbinary.business.page.PageData_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package StoreTransformer_Package renames Standard.org.allbinary.logic.visual.transform.StoreTransformer_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TitleBodyValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.bodies.title.TitleBodyValidation_Package;
   package TransformTemplateCustomizerUtil_Package renames Standard.org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
   package StringEscapeUtils_Package renames Standard.org.apache.commons.lang3.StringEscapeUtils_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type TitleBodyCustomizerView is tagged;
   type TitleBodyCustomizerView_Access is access all TitleBodyCustomizerView'Class;
   type TitleBodyCustomizerView_Access_Array is array (Natural range <>) of TitleBodyCustomizerView_Access;
   type TitleBodyCustomizerView_Access_Array_Access is access all TitleBodyCustomizerView_Access_Array;

   type TitleBodyCustomizerView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      titleBody : TitleBodyValidation_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out TitleBodyCustomizerView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return TitleBodyCustomizerView_Access;
   procedure addDomNodeInterfaces (This : in out TitleBodyCustomizerView);
   function toXmlNode (This : in out TitleBodyCustomizerView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out TitleBodyCustomizerView; document : Document_Access);
   function view (This : in out TitleBodyCustomizerView) return Unbounded_String;
   procedure view (This : in out TitleBodyCustomizerView);

end views.business.context.modules.storefront.customizer.bodies.generic_Id.title.TitleBodyCustomizerView_Package;


