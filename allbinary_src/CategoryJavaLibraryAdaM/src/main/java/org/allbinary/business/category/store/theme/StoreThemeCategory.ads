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

limited with org.allbinary.business.category.store.theme.StoreThemeCategory_Package;
package org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References is
   type StoreThemeCategory_Access is access all org.allbinary.business.category.store.theme.StoreThemeCategory_Package.StoreThemeCategory'Class;
   type StoreThemeCategory_Access_Array is array (Natural range <>) of StoreThemeCategory_Access;
   type StoreThemeCategory_Access_Array_Access is access all StoreThemeCategory_Access_Array;
   type StoreThemeCategory_Access_Array_Access_Array is array (Natural range <>) of StoreThemeCategory_Access_Array_Access;
   type StoreThemeCategory_Access_Array_Access_Array_Access is access all StoreThemeCategory_Access_Array_Access_Array;
end org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References;

with org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.business.category.Category_Package; use org.allbinary.business.category.Category_Package;
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;
limited with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References;
limited with org.allbinary.logic.visual.theme.ThemeValidation_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
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
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype CategoryInterface_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access;
   use type CategoryInterface_Access;
   subtype CategoryInterface_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array;
   use type CategoryInterface_Access_Array;
   subtype CategoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access;
   use type CategoryInterface_Access_Array_Access;
   subtype CategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array;
   use type CategoryInterface_Access_Array_Access_Array;
   subtype CategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array_Access;
   use type CategoryInterface_Access_Array_Access_Array_Access;
   subtype CategoryPropertiesFactoryInterface_Access is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access;
   use type CategoryPropertiesFactoryInterface_Access;
   subtype CategoryPropertiesFactoryInterface_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array;
   use type CategoryPropertiesFactoryInterface_Access_Array;
   subtype CategoryPropertiesFactoryInterface_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array_Access;
   use type CategoryPropertiesFactoryInterface_Access_Array_Access;
   subtype CategoryPropertiesFactoryInterface_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array_Access_Array;
   use type CategoryPropertiesFactoryInterface_Access_Array_Access_Array;
   subtype CategoryPropertiesFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array_Access_Array_Access;
   use type CategoryPropertiesFactoryInterface_Access_Array_Access_Array_Access;
   subtype ThemeValidation_Access is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access;
   use type ThemeValidation_Access;
   subtype ThemeValidation_Access_Array is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array;
   use type ThemeValidation_Access_Array;
   subtype ThemeValidation_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array_Access;
   use type ThemeValidation_Access_Array_Access;
   subtype ThemeValidation_Access_Array_Access_Array is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array_Access_Array;
   use type ThemeValidation_Access_Array_Access_Array;
   subtype ThemeValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeValidation_Package_References.ThemeValidation_Access_Array_Access_Array_Access;
   use type ThemeValidation_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreThemeCategory_Access is org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References.StoreThemeCategory_Access;
   function "=" (Left, Right : StoreThemeCategory_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References."=";
   subtype StoreThemeCategory_Access_Array is org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References.StoreThemeCategory_Access_Array;
   function "=" (Left, Right : StoreThemeCategory_Access_Array) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References."=";
   subtype StoreThemeCategory_Access_Array_Access is org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References.StoreThemeCategory_Access_Array_Access;
   function "=" (Left, Right : StoreThemeCategory_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References."=";
   subtype StoreThemeCategory_Access_Array_Access_Array is org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References.StoreThemeCategory_Access_Array_Access_Array;
   function "=" (Left, Right : StoreThemeCategory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References."=";
   subtype StoreThemeCategory_Access_Array_Access_Array_Access is org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References.StoreThemeCategory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreThemeCategory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategory_Package_References."=";

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


