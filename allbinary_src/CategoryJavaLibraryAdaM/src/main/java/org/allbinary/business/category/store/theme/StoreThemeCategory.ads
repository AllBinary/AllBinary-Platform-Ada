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
with org.allbinary.business.category.Category_Package; use org.allbinary.business.category.Category_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.visual.theme.ThemeData_Package; use org.allbinary.logic.visual.theme.ThemeData_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package; use org.allbinary.logic.visual.theme.ThemeValidation_Package;
with org.allbinary.logic.visual.theme.ThemesData_Package; use org.allbinary.logic.visual.theme.ThemesData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;

package org.allbinary.business.category.store.theme.StoreThemeCategory_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package Category_Package renames org.allbinary.business.category.Category_Package;
   package CategoryInterface_Package renames org.allbinary.business.category.CategoryInterface_Package;
   package CategoryPropertiesFactoryInterface_Package renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package ThemeData_Package renames org.allbinary.logic.visual.theme.ThemeData_Package;
   package ThemeValidation_Package renames org.allbinary.logic.visual.theme.ThemeValidation_Package;
   package ThemesData_Package renames org.allbinary.logic.visual.theme.ThemesData_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type StoreThemeCategory is tagged;
   type StoreThemeCategory_Access is access all StoreThemeCategory'Class;
   type StoreThemeCategory_Access_Array is array (Natural range <>) of StoreThemeCategory_Access;
   type StoreThemeCategory_Access_Array_Access is access all StoreThemeCategory_Access_Array;

   type StoreThemeCategory is new Category and StoreThemeCategoryInterface with record
      transformInfoInterface : TransformInfoInterface_Access;
      themeVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out StoreThemeCategory'Class; transformInfoInterface : TransformInfoInterface_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access; level : Integer);
   function Create (transformInfoInterface : TransformInfoInterface_Access; categoryPropertiesFactoryInterface : CategoryPropertiesFactoryInterface_Access; level : Integer) return StoreThemeCategory_Access;
   function getTransformInfoInterface (This : in out StoreThemeCategory) return TransformInfoInterface_Access;
   procedure getTransformInfoInterface (This : in out StoreThemeCategory);
   procedure addThemes (This : in out StoreThemeCategory; node : Node_Access);
   procedure addTheme (This : in out StoreThemeCategory; themeValidation : ThemeValidation_Access);
   function getThemes (This : in out StoreThemeCategory) return BasicArrayList_Access;
   procedure getThemes (This : in out StoreThemeCategory);
   function isValid (This : in out StoreThemeCategory) return Boolean;
   procedure isValid (This : in out StoreThemeCategory);
   function toHashMap (This : in out StoreThemeCategory) return HashMap_Access;
   procedure toHashMap (This : in out StoreThemeCategory);
   function toVector (This : in out StoreThemeCategory) return BasicArrayList_Access;
   procedure toVector (This : in out StoreThemeCategory);

end org.allbinary.business.category.store.theme.StoreThemeCategory_Package;


