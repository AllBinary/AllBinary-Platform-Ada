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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.theme.ThemeInterface_Package; use org.allbinary.logic.visual.theme.ThemeInterface_Package;

package org.allbinary.logic.visual.theme.ThemeValidation_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreThemeCategoryInterface_Package renames Standard.org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
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
   type ThemeValidation_Access_Array_Access_Array is array (Natural range <>) of ThemeValidation_Access_Array_Access;
   type ThemeValidation_Access_Array_Access_Array_Access is access all ThemeValidation_Access_Array_Access_Array;

   type ThemeValidation is new Java_Object and ThemeInterface and ValidationInterface and DomNodeInterface and CompositeTransformInfoInterface with record
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

   procedure Initialize (This : in out ThemeValidation'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; cssStyleValidation_Param : access CssStyleValidation_Package.CssStyleValidation'Class; categoryThemePath : Unbounded_String);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; cssStyleValidation_Param : access CssStyleValidation_Package.CssStyleValidation'Class; categoryThemePath : Unbounded_String) return ThemeValidation_Access;
   procedure Initialize (This : in out ThemeValidation'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; hashMap_Param : access HashMap_Package.HashMap'Class) return ThemeValidation_Access;
   procedure Initialize (This : in out ThemeValidation'Class; storeThemeCategoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class; node_Param : access Node_Package.Node'Class);
   function Create (storeThemeCategoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class; node_Param : access Node_Package.Node'Class) return ThemeValidation_Access;
   procedure init (This : in out ThemeValidation);
   procedure init (This : in out ThemeValidation; storeThemeCategoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class);
   function getTransformInfoInterface (This : in out ThemeValidation) return TransformInfoInterface_Access;
   function getName (This : in out ThemeValidation) return Unbounded_String;
   function getPreviewImageName (This : in out ThemeValidation) return Unbounded_String;
   function getPreviewImagePath (This : in out ThemeValidation) return Unbounded_String;
   function getPath (This : in out ThemeValidation) return Unbounded_String;
   function getCssStyleValidation (This : in out ThemeValidation) return CssStyleValidation_Access;
   function isValid (This : in out ThemeValidation) return Boolean;
   function validationInfo (This : in out ThemeValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out ThemeValidation) return Document_Access;
   function toValidationInfoNode (This : in out ThemeValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out ThemeValidation; document_Param : access Document_Package.Document'Class);
   function getKey (This : in out ThemeValidation) return Java_Object_Access;
   function toVector (This : in out ThemeValidation) return BasicArrayList_Access;
   function toHashMap (This : in out ThemeValidation) return HashMap_Access;
   function toXmlNode (This : in out ThemeValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ThemeValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.theme.ThemeValidation_Package;


