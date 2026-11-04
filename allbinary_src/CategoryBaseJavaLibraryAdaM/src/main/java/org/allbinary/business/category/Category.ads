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

limited with org.allbinary.business.category.Category_Package;
package org.allbinary.business.category.Category_Package_References is
   type Category_Access is access all org.allbinary.business.category.Category_Package.Category'Class;
   type Category_Access_Array is array (Natural range <>) of Category_Access;
   type Category_Access_Array_Access is access all Category_Access_Array;
   type Category_Access_Array_Access_Array is array (Natural range <>) of Category_Access_Array_Access;
   type Category_Access_Array_Access_Array_Access is access all Category_Access_Array_Access_Array;
end org.allbinary.business.category.Category_Package_References;

with org.allbinary.business.category.Category_Package_References;
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
limited with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References;
limited with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References;
limited with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;

package org.allbinary.business.category.Category_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CategoryHierarchyInterface_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package CategoryPropertiesFactoryInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
   package CategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   subtype CategoryHierarchyInterface_Access is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access;
   use type CategoryHierarchyInterface_Access;
   subtype CategoryHierarchyInterface_Access_Array is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array;
   use type CategoryHierarchyInterface_Access_Array;
   subtype CategoryHierarchyInterface_Access_Array_Access is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array_Access;
   use type CategoryHierarchyInterface_Access_Array_Access;
   subtype CategoryHierarchyInterface_Access_Array_Access_Array is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array_Access_Array;
   use type CategoryHierarchyInterface_Access_Array_Access_Array;
   subtype CategoryHierarchyInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array_Access_Array_Access;
   use type CategoryHierarchyInterface_Access_Array_Access_Array_Access;
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
   subtype CategoryPropertiesInterface_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access;
   use type CategoryPropertiesInterface_Access;
   subtype CategoryPropertiesInterface_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array;
   use type CategoryPropertiesInterface_Access_Array;
   subtype CategoryPropertiesInterface_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access;
   use type CategoryPropertiesInterface_Access_Array_Access;
   subtype CategoryPropertiesInterface_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access_Array;
   use type CategoryPropertiesInterface_Access_Array_Access_Array;
   subtype CategoryPropertiesInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access_Array_Access;
   use type CategoryPropertiesInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
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


   subtype Category_Access is org.allbinary.business.category.Category_Package_References.Category_Access;
   function "=" (Left, Right : Category_Access) return Boolean renames org.allbinary.business.category.Category_Package_References."=";
   subtype Category_Access_Array is org.allbinary.business.category.Category_Package_References.Category_Access_Array;
   function "=" (Left, Right : Category_Access_Array) return Boolean renames org.allbinary.business.category.Category_Package_References."=";
   subtype Category_Access_Array_Access is org.allbinary.business.category.Category_Package_References.Category_Access_Array_Access;
   function "=" (Left, Right : Category_Access_Array_Access) return Boolean renames org.allbinary.business.category.Category_Package_References."=";
   subtype Category_Access_Array_Access_Array is org.allbinary.business.category.Category_Package_References.Category_Access_Array_Access_Array;
   function "=" (Left, Right : Category_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.Category_Package_References."=";
   subtype Category_Access_Array_Access_Array_Access is org.allbinary.business.category.Category_Package_References.Category_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Category_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.Category_Package_References."=";

   type Category is new Java_Object and CategoryInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      categoryHierarchyInterface : CategoryHierarchyInterface_Access;
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
      childCategoryVector : BasicArrayList_Access;
      typeVector : BasicArrayList_Access;
      PROPERTIES : Integer;
      CATEGORY_Var : Integer;
   end record;
   NOT_ROOT : Unbounded_String;

   procedure Initialize (This : in out Category'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class);
   function Create (categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) return Category_Access;
   procedure Initialize (This : in out Category'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer);
   function Create (categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer) return Category_Access;
   procedure Initialize (This : in out Category'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class);
   function Create (rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) return Category_Access;
   function getKey (This : in out Category) return Java_Object_Access;
   function getRootFilePath (This : in out Category) return AbPath_Access;
   function getFilePath (This : in out Category) return AbPath_Access;
   function getWebAppPath (This : in out Category) return AbPath_Access;
   function getPath (This : in out Category) return AbPath_Access;
   function addChildProperty (This : in out Category; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) return Boolean;
   procedure addChildProperty (This : in out Category; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class);
   function addChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean;
   procedure addChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function getChildNodes (This : in out Category) return BasicArrayList_Access;
   function removeChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean;
   procedure removeChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   procedure removal (This : in out Category; removalVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function removeDuplicateChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean;
   procedure removeDuplicateChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function isLeaf (This : in out Category) return Boolean;
   function getProperties (This : in out Category) return CategoryPropertiesInterface_Access;
   procedure setProperties (This : in out Category; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class);
   function getHierarchy (This : in out Category) return CategoryHierarchyInterface_Access;
   procedure setHierarchy (This : in out Category; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class);
   function isValid (This : in out Category) return Boolean;
   function toValidationInfoDoc (This : in out Category) return Document_Access;
   function toValidationInfoNode (This : in out Category; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out Category; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out Category) return Unbounded_String;
   function toHashMap (This : in out Category) return HashMap_Access;
   function toVector (This : in out Category) return BasicArrayList_Access;
   procedure log (This : in out Category);

end org.allbinary.business.category.Category_Package;


