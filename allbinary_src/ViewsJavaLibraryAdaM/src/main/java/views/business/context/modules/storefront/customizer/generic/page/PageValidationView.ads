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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfo_Package; use org.allbinary.logic.visual.transform.info.TransformInfo_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.customizer.CustomizerUtil_Package; use views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
with views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package; use views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package;

package views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package TransformInfoEntity_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
   package TransformInfoEntityBuilder_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfo_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfo_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectConfigInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
   package PageValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package;
   package TitleData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package CustomizerUtil_Package renames Standard.views.business.context.modules.storefront.customizer.CustomizerUtil_Package;

   type PageValidationView is tagged;
   type PageValidationView_Access is access all PageValidationView'Class;
   type PageValidationView_Access_Array is array (Natural range <>) of PageValidationView_Access;
   type PageValidationView_Access_Array_Access is access all PageValidationView_Access_Array;

   type PageValidationView is new PageView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PageValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return PageValidationView_Access;
   function isValid (This : in out PageValidationView) return Boolean;
   function validationInfo (This : in out PageValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out PageValidationView) return Document_Access;
   function toValidationInfoNode (This : in out PageValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out PageValidationView; document : Document_Access);

end views.business.context.modules.storefront.customizer.generic_Id.page.PageValidationView_Package;


