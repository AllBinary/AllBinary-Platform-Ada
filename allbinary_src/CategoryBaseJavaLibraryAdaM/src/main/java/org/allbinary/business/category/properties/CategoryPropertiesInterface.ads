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
limited with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
package org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References is
   type CategoryPropertiesInterface_Access is access all org.allbinary.business.category.properties.CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class;
   type CategoryPropertiesInterface_Access_Array is array (Natural range <>) of CategoryPropertiesInterface_Access;
   type CategoryPropertiesInterface_Access_Array_Access is access all CategoryPropertiesInterface_Access_Array;
   type CategoryPropertiesInterface_Access_Array_Access_Array is array (Natural range <>) of CategoryPropertiesInterface_Access_Array_Access;
   type CategoryPropertiesInterface_Access_Array_Access_Array_Access is access all CategoryPropertiesInterface_Access_Array_Access_Array;
   type CategoryPropertiesInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryPropertiesInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryPropertiesInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryPropertiesInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryPropertiesInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryPropertiesInterface_Access_Array_Access is (if Value /= null and then Value.all in CategoryPropertiesInterface_Access_Array_Object'Class then CategoryPropertiesInterface_Access_Array_Object'Class (Value.all).Value else null);
   type CategoryPropertiesInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryPropertiesInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryPropertiesInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryPropertiesInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryPropertiesInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryPropertiesInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CategoryPropertiesInterface_Access_Array_Access_Array_Object'Class then CategoryPropertiesInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References;

with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.business.category.properties.CategoryPropertiesInterface_Package is

   package CategoryHierarchyInterface_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   type CategoryPropertiesInterface is interface and TableMappingInterface and ValidationInterface;
   subtype CategoryPropertiesInterface_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access;
   function "=" (Left, Right : CategoryPropertiesInterface_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References."=";
   subtype CategoryPropertiesInterface_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array;
   function "=" (Left, Right : CategoryPropertiesInterface_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References."=";
   subtype CategoryPropertiesInterface_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References."=";
   function Java_Box (Value : CategoryPropertiesInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.Java_Box;
   function Java_Unbox_CategoryPropertiesInterface_Access_Array (Value : access Java_Object'Class) return CategoryPropertiesInterface_Access_Array_Access renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.Java_Unbox_CategoryPropertiesInterface_Access_Array;
   subtype CategoryPropertiesInterface_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryPropertiesInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References."=";
   subtype CategoryPropertiesInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References."=";
   function Java_Box (Value : CategoryPropertiesInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.Java_Box;
   function Java_Unbox_CategoryPropertiesInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return CategoryPropertiesInterface_Access_Array_Access_Array_Access renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.Java_Unbox_CategoryPropertiesInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_CategoryPropertiesInterface (Value : CategoryPropertiesInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setValue (This : in out CategoryPropertiesInterface; value : Unbounded_String) is abstract;
   function getValue (This : in out CategoryPropertiesInterface) return Unbounded_String is abstract;
   function getWebAppPath (This : in out CategoryPropertiesInterface) return AbPath_Access is abstract;
   function getPath (This : in out CategoryPropertiesInterface; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) return AbPath_Access is abstract;
   procedure getPath (This : in out CategoryPropertiesInterface; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) is abstract;
   function getFileName (This : in out CategoryPropertiesInterface) return Unbounded_String is abstract;
   function isRoot (This : in out CategoryPropertiesInterface) return Boolean is abstract;
   function isRealRoot (This : in out CategoryPropertiesInterface) return Boolean is abstract;

end org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;


