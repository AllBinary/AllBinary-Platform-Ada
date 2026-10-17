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
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryUtil_Package; use org.allbinary.business.category.CategoryUtil_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactory_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryPropertiesFactory_Package; use org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryPropertiesFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategory_Package; use org.allbinary.business.category.store.theme.StoreThemeCategory_Package;

package org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package is

   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package CategoryUtil_Package renames Standard.org.allbinary.business.category.CategoryUtil_Package;
   package CategoryPropertiesFactory_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;
   package CategoryPropertiesFactoryInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
   package RootStoreThemeCategoryPropertiesFactory_Package renames Standard.org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryPropertiesFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StoreThemeCategoryFactory is tagged;
   type StoreThemeCategoryFactory_Access is access all StoreThemeCategoryFactory'Class;
   type StoreThemeCategoryFactory_Access_Array is array (Natural range <>) of StoreThemeCategoryFactory_Access;
   type StoreThemeCategoryFactory_Access_Array_Access is access all StoreThemeCategoryFactory_Access_Array;

   type StoreThemeCategoryFactory is new CategoryFactoryInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      transformInfoInterface : TransformInfoInterface_Access;
   end record;

   procedure Initialize (This : in out StoreThemeCategoryFactory'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return StoreThemeCategoryFactory_Access;
   function getRootInstance (This : in out StoreThemeCategoryFactory) return CategoryInterface_Access;
   function getRootInstance (This : in out StoreThemeCategoryFactory; categoryAbPath : AbPath_Access) return CategoryInterface_Access;
   procedure getRootInstance (This : in out StoreThemeCategoryFactory; categoryAbPath : AbPath_Access);
   function getRootInstanceFromNode (This : in out StoreThemeCategoryFactory; node : Node_Access) return CategoryInterface_Access;
   procedure getRootInstanceFromNode (This : in out StoreThemeCategoryFactory; node : Node_Access);
   function getInstance (This : in out StoreThemeCategoryFactory; categoryPath : Unbounded_String; level : Integer) return CategoryInterface_Access;
   procedure getInstance (This : in out StoreThemeCategoryFactory; categoryPath : Unbounded_String; level : Integer);
   function getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPath : Unbounded_String) return CategoryInterface_Access;
   procedure getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPath : Unbounded_String);
   function getInstance (This : in out StoreThemeCategoryFactory; node : Node_Access; level : Integer) return CategoryInterface_Access;
   procedure getInstance (This : in out StoreThemeCategoryFactory; node : Node_Access; level : Integer);
   function getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; node : Node_Access) return CategoryInterface_Access;
   procedure getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; node : Node_Access);
   function getInstance (This : in out StoreThemeCategoryFactory; categoryPropertiesHashMap : HashMap_Access; level : Integer) return CategoryInterface_Access;
   procedure getInstance (This : in out StoreThemeCategoryFactory; categoryPropertiesHashMap : HashMap_Access; level : Integer);
   function getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesHashMap : HashMap_Access) return CategoryInterface_Access;
   procedure getInstance (This : in out StoreThemeCategoryFactory; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesHashMap : HashMap_Access);

end org.allbinary.business.category.store.theme.StoreThemeCategoryFactory_Package;


