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
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package;
with org.allbinary.data.tree.category.CategoryLoaderFactory_Package; use org.allbinary.data.tree.category.CategoryLoaderFactory_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package; use org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.customizer.includes.style.theme.ThemeCustomizerView_Package; use views.business.context.modules.storefront.customizer.includes.style.theme.ThemeCustomizerView_Package;

package views.business.context.modules.storefront.customizer.includes.style.theme.EditThemeValidationView_Package is

   package CategoryFactoryInterface_Package renames org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames org.allbinary.business.category.CategoryInterface_Package;
   package StoreThemeCategoryFactory_Package renames org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package;
   package StoreThemeCategoryInterface_Package renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
   package StoreThemeCategoryPathValidationView_Package renames org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package;
   package CategoryLoaderFactory_Package renames org.allbinary.data.tree.category.CategoryLoaderFactory_Package;
   package CategoryLoaderInterface_Package renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomDocumentHelper_Package renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type EditThemeValidationView is tagged;
   type EditThemeValidationView_Access is access all EditThemeValidationView'Class;
   type EditThemeValidationView_Access_Array is array (Natural range <>) of EditThemeValidationView_Access;
   type EditThemeValidationView_Access_Array_Access is access all EditThemeValidationView_Access_Array;

   type EditThemeValidationView is new ThemeCustomizerView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out EditThemeValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return EditThemeValidationView_Access;
   function isValid (This : in out EditThemeValidationView) return Boolean;
   procedure isValid (This : in out EditThemeValidationView);
   function validationInfo (This : in out EditThemeValidationView) return Unbounded_String;
   procedure validationInfo (This : in out EditThemeValidationView);
   function toValidationInfoDoc (This : in out EditThemeValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out EditThemeValidationView);
   function toValidationInfoNode (This : in out EditThemeValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out EditThemeValidationView; document : Document_Access);

end views.business.context.modules.storefront.customizer.includes.style.theme.EditThemeValidationView_Package;


