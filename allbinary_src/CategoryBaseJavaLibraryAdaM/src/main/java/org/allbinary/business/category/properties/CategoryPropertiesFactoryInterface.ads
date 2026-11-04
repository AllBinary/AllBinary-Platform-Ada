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

limited with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
package org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References is
   type CategoryPropertiesFactoryInterface_Access is access all org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class;
   type CategoryPropertiesFactoryInterface_Access_Array is array (Natural range <>) of CategoryPropertiesFactoryInterface_Access;
   type CategoryPropertiesFactoryInterface_Access_Array_Access is access all CategoryPropertiesFactoryInterface_Access_Array;
   type CategoryPropertiesFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of CategoryPropertiesFactoryInterface_Access_Array_Access;
   type CategoryPropertiesFactoryInterface_Access_Array_Access_Array_Access is access all CategoryPropertiesFactoryInterface_Access_Array_Access_Array;
end org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References;

with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References;

package org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package is

   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   type CategoryPropertiesFactoryInterface is interface;
   subtype CategoryPropertiesFactoryInterface_Access is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access;
   function "=" (Left, Right : CategoryPropertiesFactoryInterface_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References."=";
   subtype CategoryPropertiesFactoryInterface_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array;
   function "=" (Left, Right : CategoryPropertiesFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References."=";
   subtype CategoryPropertiesFactoryInterface_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References."=";
   subtype CategoryPropertiesFactoryInterface_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryPropertiesFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References."=";
   subtype CategoryPropertiesFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References.CategoryPropertiesFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryPropertiesFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package_References."=";
   function Java_Object_Access_From_CategoryPropertiesFactoryInterface (Value : CategoryPropertiesFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out CategoryPropertiesFactoryInterface) return CategoryPropertiesInterface_Access is abstract;

end org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;


