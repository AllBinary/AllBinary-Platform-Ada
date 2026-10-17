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
with org.allbinary.business.category.properties.CategoryPropertiesFactory_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.Category_Package; use org.allbinary.business.category.Category_Package;

package org.allbinary.business.category.CategoryAbstractFactory_Package is

   package CategoryPropertiesFactory_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactory_Package;
   package CategoryPropertiesFactoryInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CategoryAbstractFactory is tagged;
   type CategoryAbstractFactory_Access is access all CategoryAbstractFactory'Class;
   type CategoryAbstractFactory_Access_Array is array (Natural range <>) of CategoryAbstractFactory_Access;
   type CategoryAbstractFactory_Access_Array_Access is access all CategoryAbstractFactory_Access_Array;

   type CategoryAbstractFactory is new CategoryFactoryInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out CategoryAbstractFactory'Class);
   function Create return CategoryAbstractFactory_Access;
   function getRootInstance (This : in out CategoryAbstractFactory) return CategoryInterface_Access;
   function getRootInstance (This : in out CategoryAbstractFactory; categoryAbPath_Param : access AbPath'Class) return CategoryInterface_Access;
   procedure getRootInstance (This : in out CategoryAbstractFactory; categoryAbPath_Param : access AbPath'Class);
   function getRootInstanceFromNode (This : in out CategoryAbstractFactory; node_Param : access Node'Class) return CategoryInterface_Access;
   procedure getRootInstanceFromNode (This : in out CategoryAbstractFactory; node_Param : access Node'Class);
   function getInstance (This : in out CategoryAbstractFactory; categoryName : Unbounded_String) return CategoryInterface_Access;
   procedure getInstance (This : in out CategoryAbstractFactory; categoryName : Unbounded_String);
   function getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface'Class; categoryName : Unbounded_String) return CategoryInterface_Access;
   procedure getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface'Class; categoryName : Unbounded_String);
   function getInstance (This : in out CategoryAbstractFactory; node_Param : access Node'Class) return CategoryInterface_Access;
   procedure getInstance (This : in out CategoryAbstractFactory; node_Param : access Node'Class);
   function getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface'Class; node_Param : access Node'Class) return CategoryInterface_Access;
   procedure getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface'Class; node_Param : access Node'Class);
   function getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap'Class) return CategoryInterface_Access;
   procedure getInstance (This : in out CategoryAbstractFactory; rootCategoryInterface_Param : access CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap'Class);

end org.allbinary.business.category.CategoryAbstractFactory_Package;


