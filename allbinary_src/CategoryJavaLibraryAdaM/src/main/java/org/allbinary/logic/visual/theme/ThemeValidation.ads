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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
with org.allbinary.data.tree.category.CategoryLoaderFactory_Package; use org.allbinary.data.tree.category.CategoryLoaderFactory_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package; use org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlData_Package; use org.allbinary.logic.communication.sql.AbSqlData_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package; use org.allbinary.logic.io.path.PathUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.theme.ThemeInterface_Package; use org.allbinary.logic.visual.theme.ThemeInterface_Package;
with org.allbinary.logic.visual.theme.ThemeData_Package; use org.allbinary.logic.visual.theme.ThemeData_Package;

package org.allbinary.logic.visual.theme.ThemeValidation_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package StoreThemeCategoryFactory_Package renames Standard.org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package;
   package StoreThemeCategoryInterface_Package renames Standard.org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
   package CategoryLoaderFactory_Package renames Standard.org.allbinary.data.tree.category.CategoryLoaderFactory_Package;
   package CategoryLoaderInterface_Package renames Standard.org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
   package DomData_Package renames Standard.org.allbinary.data.tree.dom.DomData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlData_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlData_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package PathUtil_Package renames Standard.org.allbinary.logic.io.path.PathUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CompositeTransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CssStyleValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ThemeValidation is tagged;
   type ThemeValidation_Access is access all ThemeValidation'Class;
   type ThemeValidation_Access_Array is array (Natural range <>) of ThemeValidation_Access;
   type ThemeValidation_Access_Array_Access is access all ThemeValidation_Access_Array;

   type ThemeValidation is new ThemeInterface and ValidationInterface and DomNodeInterface and CompositeTransformInfoInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      styleValidationInterface : ValidationInterface_Access;
      themeName : Unbounded_String;
      themePreviewImageName : Unbounded_String;
      webAppAbPath : AbPath_Access;
      categoryAbPath : AbPath_Access;
      fileAbPath : AbPath_Access;
   end record;

   procedure Initialize (This : in out ThemeValidation'Class; transformInfoInterface : TransformInfoInterface_Access; cssStyleValidation : CssStyleValidation_Access; categoryThemePath : Unbounded_String);
   function Create (transformInfoInterface : TransformInfoInterface_Access; cssStyleValidation : CssStyleValidation_Access; categoryThemePath : Unbounded_String) return ThemeValidation_Access;
   procedure init (This : in out ThemeValidation);
   procedure init (This : in out ThemeValidation; storeThemeCategoryInterface : StoreThemeCategoryInterface_Access);
   function getTransformInfoInterface (This : in out ThemeValidation) return TransformInfoInterface_Access;
   function getName (This : in out ThemeValidation) return Unbounded_String;
   function getPreviewImageName (This : in out ThemeValidation) return Unbounded_String;
   function getPreviewImagePath (This : in out ThemeValidation) return Unbounded_String;
   function getPath (This : in out ThemeValidation) return Unbounded_String;
   function getCssStyleValidation (This : in out ThemeValidation) return CssStyleValidation_Access;
   function isValid (This : in out ThemeValidation) return Boolean;
   function validationInfo (This : in out ThemeValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out ThemeValidation) return Document_Access;
   function toValidationInfoNode (This : in out ThemeValidation; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out ThemeValidation; document : Document_Access);
   function getKey (This : in out ThemeValidation) return Java_Object_Access;
   function toVector (This : in out ThemeValidation) return BasicArrayList_Access;
   function toHashMap (This : in out ThemeValidation) return HashMap_Access;
   function toXmlNode (This : in out ThemeValidation; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out ThemeValidation; document : Document_Access);

end org.allbinary.logic.visual.theme.ThemeValidation_Package;


