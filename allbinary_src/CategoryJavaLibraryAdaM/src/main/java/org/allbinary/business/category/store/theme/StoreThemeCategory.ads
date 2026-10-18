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
with org.allbinary.business.category.Category_Package; use org.allbinary.business.category.Category_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package; use org.allbinary.logic.visual.theme.ThemeValidation_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;

package org.allbinary.business.category.store.theme.StoreThemeCategory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Category_Package renames Standard.org.allbinary.business.category.Category_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package CategoryPropertiesFactoryInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
   package ThemeValidation_Package renames Standard.org.allbinary.logic.visual.theme.ThemeValidation_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StoreThemeCategory is tagged;
   type StoreThemeCategory_Access is access all StoreThemeCategory'Class;
   type StoreThemeCategory_Access_Array is array (Natural range <>) of StoreThemeCategory_Access;
   type StoreThemeCategory_Access_Array_Access is access all StoreThemeCategory_Access_Array;
   type StoreThemeCategory_Access_Array_Access_Array is array (Natural range <>) of StoreThemeCategory_Access_Array_Access;
   type StoreThemeCategory_Access_Array_Access_Array_Access is access all StoreThemeCategory_Access_Array_Access_Array;

   type StoreThemeCategory is new Category_Package.Category and StoreThemeCategoryInterface with record
      transformInfoInterface : TransformInfoInterface_Access;
      themeVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer) return StoreThemeCategory_Access;
   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) return StoreThemeCategory_Access;
   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer) return StoreThemeCategory_Access;
   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; node_Param : access Node_Package.Node'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) return StoreThemeCategory_Access;
   function getTransformInfoInterface (This : in out StoreThemeCategory) return TransformInfoInterface_Access;
   procedure addThemes (This : in out StoreThemeCategory; node_Param : access Node_Package.Node'Class);
   procedure addTheme (This : in out StoreThemeCategory; themeValidation_Param : access ThemeValidation_Package.ThemeValidation'Class);
   function getThemes (This : in out StoreThemeCategory) return BasicArrayList_Access;
   function isValid (This : in out StoreThemeCategory) return Boolean;
   function toHashMap (This : in out StoreThemeCategory) return HashMap_Access;
   function toVector (This : in out StoreThemeCategory) return BasicArrayList_Access;

end org.allbinary.business.category.store.theme.StoreThemeCategory_Package;


