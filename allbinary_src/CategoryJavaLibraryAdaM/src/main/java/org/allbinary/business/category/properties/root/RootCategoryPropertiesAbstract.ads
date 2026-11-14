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

with AllBinary_Java;
limited with org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package;
package org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References is
   type RootCategoryPropertiesAbstract_Access is access all org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package.RootCategoryPropertiesAbstract'Class;
   type RootCategoryPropertiesAbstract_Access_Array is array (Natural range <>) of RootCategoryPropertiesAbstract_Access;
   type RootCategoryPropertiesAbstract_Access_Array_Access is access all RootCategoryPropertiesAbstract_Access_Array;
   type RootCategoryPropertiesAbstract_Access_Array_Access_Array is array (Natural range <>) of RootCategoryPropertiesAbstract_Access_Array_Access;
   type RootCategoryPropertiesAbstract_Access_Array_Access_Array_Access is access all RootCategoryPropertiesAbstract_Access_Array_Access_Array;
   type RootCategoryPropertiesAbstract_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RootCategoryPropertiesAbstract_Access_Array_Access;
   end record;
   function Java_Box (Value : RootCategoryPropertiesAbstract_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RootCategoryPropertiesAbstract_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RootCategoryPropertiesAbstract_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RootCategoryPropertiesAbstract_Access_Array_Access is (if Value /= null and then Value.all in RootCategoryPropertiesAbstract_Access_Array_Object'Class then RootCategoryPropertiesAbstract_Access_Array_Object'Class (Value.all).Value else null);
   type RootCategoryPropertiesAbstract_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RootCategoryPropertiesAbstract_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RootCategoryPropertiesAbstract_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RootCategoryPropertiesAbstract_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RootCategoryPropertiesAbstract_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RootCategoryPropertiesAbstract_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RootCategoryPropertiesAbstract_Access_Array_Access_Array_Object'Class then RootCategoryPropertiesAbstract_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References;

with org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References;
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
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;

package org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CategoryHierarchyInterface_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
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


   subtype RootCategoryPropertiesAbstract_Access is org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References.RootCategoryPropertiesAbstract_Access;
   function "=" (Left, Right : RootCategoryPropertiesAbstract_Access) return Boolean renames org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References."=";
   subtype RootCategoryPropertiesAbstract_Access_Array is org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References.RootCategoryPropertiesAbstract_Access_Array;
   function "=" (Left, Right : RootCategoryPropertiesAbstract_Access_Array) return Boolean renames org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References."=";
   subtype RootCategoryPropertiesAbstract_Access_Array_Access is org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References.RootCategoryPropertiesAbstract_Access_Array_Access;
   function "=" (Left, Right : RootCategoryPropertiesAbstract_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References."=";
   function Java_Box (Value : RootCategoryPropertiesAbstract_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References.Java_Box;
   function Java_Unbox_RootCategoryPropertiesAbstract_Access_Array (Value : access Java_Object'Class) return RootCategoryPropertiesAbstract_Access_Array_Access renames org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References.Java_Unbox_RootCategoryPropertiesAbstract_Access_Array;
   subtype RootCategoryPropertiesAbstract_Access_Array_Access_Array is org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References.RootCategoryPropertiesAbstract_Access_Array_Access_Array;
   function "=" (Left, Right : RootCategoryPropertiesAbstract_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References."=";
   subtype RootCategoryPropertiesAbstract_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References.RootCategoryPropertiesAbstract_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RootCategoryPropertiesAbstract_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References."=";
   function Java_Box (Value : RootCategoryPropertiesAbstract_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References.Java_Box;
   function Java_Unbox_RootCategoryPropertiesAbstract_Access_Array_Access_Array (Value : access Java_Object'Class) return RootCategoryPropertiesAbstract_Access_Array_Access_Array_Access renames org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package_References.Java_Unbox_RootCategoryPropertiesAbstract_Access_Array_Access_Array;

   type RootCategoryPropertiesAbstract is new Java_Object and RootCategoryPropertiesInterface with record
      category : Unbounded_String;
      fileName : Unbounded_String;
   end record;

   procedure Initialize (This : in out RootCategoryPropertiesAbstract'Class);
   function Create return RootCategoryPropertiesAbstract_Access;
   function getKey (This : in out RootCategoryPropertiesAbstract) return Java_Object_Access;
   function getValue (This : in out RootCategoryPropertiesAbstract) return Unbounded_String;
   procedure setValue (This : in out RootCategoryPropertiesAbstract; value : Unbounded_String);
   procedure setRootFilePath (This : in out RootCategoryPropertiesAbstract; value_Param : access AbPath_Package.AbPath'Class);
   procedure setRootFilePath (This : in out RootCategoryPropertiesAbstract; value : Unbounded_String);
   function getRootFilePath (This : in out RootCategoryPropertiesAbstract) return AbPath_Access;
   function isRealRoot (This : in out RootCategoryPropertiesAbstract) return Boolean;
   function isRoot (This : in out RootCategoryPropertiesAbstract) return Boolean;
   function getWebAppPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) return Unbounded_String;
   procedure getWebAppPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class);
   function getPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) return AbPath_Access;
   procedure getPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class);
   function getFileName (This : in out RootCategoryPropertiesAbstract) return Unbounded_String;
   function isValid (This : in out RootCategoryPropertiesAbstract) return Boolean;
   function toHashMap (This : in out RootCategoryPropertiesAbstract) return HashMap_Access;
   function toVector (This : in out RootCategoryPropertiesAbstract) return BasicArrayList_Access;
   function toValidationInfoDoc (This : in out RootCategoryPropertiesAbstract) return Document_Access;
   function toValidationInfoNode (This : in out RootCategoryPropertiesAbstract; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out RootCategoryPropertiesAbstract; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out RootCategoryPropertiesAbstract) return Unbounded_String;

end org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package;


