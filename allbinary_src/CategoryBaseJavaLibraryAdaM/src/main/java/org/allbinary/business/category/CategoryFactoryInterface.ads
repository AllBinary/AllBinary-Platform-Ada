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

limited with org.allbinary.business.category.CategoryFactoryInterface_Package;
package org.allbinary.business.category.CategoryFactoryInterface_Package_References is
   type CategoryFactoryInterface_Access is access all org.allbinary.business.category.CategoryFactoryInterface_Package.CategoryFactoryInterface'Class;
   type CategoryFactoryInterface_Access_Array is array (Natural range <>) of CategoryFactoryInterface_Access;
   type CategoryFactoryInterface_Access_Array_Access is access all CategoryFactoryInterface_Access_Array;
   type CategoryFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of CategoryFactoryInterface_Access_Array_Access;
   type CategoryFactoryInterface_Access_Array_Access_Array_Access is access all CategoryFactoryInterface_Access_Array_Access_Array;
end org.allbinary.business.category.CategoryFactoryInterface_Package_References;

with org.allbinary.business.category.CategoryFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;

package org.allbinary.business.category.CategoryFactoryInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   type CategoryFactoryInterface is interface;
   subtype CategoryFactoryInterface_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access;
   function "=" (Left, Right : CategoryFactoryInterface_Access) return Boolean renames org.allbinary.business.category.CategoryFactoryInterface_Package_References."=";
   subtype CategoryFactoryInterface_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array;
   function "=" (Left, Right : CategoryFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.category.CategoryFactoryInterface_Package_References."=";
   subtype CategoryFactoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryFactoryInterface_Package_References."=";
   subtype CategoryFactoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.CategoryFactoryInterface_Package_References."=";
   subtype CategoryFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryFactoryInterface_Package_References."=";
   function Java_Object_Access_From_CategoryFactoryInterface (Value : CategoryFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getRootInstance (This : in out CategoryFactoryInterface) return CategoryInterface_Access is abstract;
   function getRootInstance (This : in out CategoryFactoryInterface; categoryPath_Param : access AbPath_Package.AbPath'Class) return CategoryInterface_Access is abstract;
   function getRootInstanceFromNode (This : in out CategoryFactoryInterface; node_Param : access Node_Package.Node'Class) return CategoryInterface_Access is abstract;
   function getInstance (This : in out CategoryFactoryInterface; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; name : Unbounded_String) return CategoryInterface_Access is abstract;
   function getInstance (This : in out CategoryFactoryInterface; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; node_Param : access Node_Package.Node'Class) return CategoryInterface_Access is abstract;
   function getInstance (This : in out CategoryFactoryInterface; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return CategoryInterface_Access is abstract;

end org.allbinary.business.category.CategoryFactoryInterface_Package;


