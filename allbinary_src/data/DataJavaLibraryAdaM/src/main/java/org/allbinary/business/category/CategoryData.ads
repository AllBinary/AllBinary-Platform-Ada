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
limited with org.allbinary.business.category.CategoryData_Package;
package org.allbinary.business.category.CategoryData_Package_References is
   type CategoryData_Access is access all org.allbinary.business.category.CategoryData_Package.CategoryData'Class;
   type CategoryData_Access_Array is array (Natural range <>) of CategoryData_Access;
   type CategoryData_Access_Array_Access is access all CategoryData_Access_Array;
   type CategoryData_Access_Array_Access_Array is array (Natural range <>) of CategoryData_Access_Array_Access;
   type CategoryData_Access_Array_Access_Array_Access is access all CategoryData_Access_Array_Access_Array;
   type CategoryData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryData_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryData_Access_Array_Access is (if Value /= null and then Value.all in CategoryData_Access_Array_Object'Class then CategoryData_Access_Array_Object'Class (Value.all).Value else null);
   type CategoryData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CategoryData_Access_Array_Access_Array_Object'Class then CategoryData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.category.CategoryData_Package_References;

with org.allbinary.business.category.CategoryData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.category.CategoryData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CategoryData_Access is org.allbinary.business.category.CategoryData_Package_References.CategoryData_Access;
   function "=" (Left, Right : CategoryData_Access) return Boolean renames org.allbinary.business.category.CategoryData_Package_References."=";
   subtype CategoryData_Access_Array is org.allbinary.business.category.CategoryData_Package_References.CategoryData_Access_Array;
   function "=" (Left, Right : CategoryData_Access_Array) return Boolean renames org.allbinary.business.category.CategoryData_Package_References."=";
   subtype CategoryData_Access_Array_Access is org.allbinary.business.category.CategoryData_Package_References.CategoryData_Access_Array_Access;
   function "=" (Left, Right : CategoryData_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryData_Package_References."=";
   function Java_Box (Value : CategoryData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.CategoryData_Package_References.Java_Box;
   function Java_Unbox_CategoryData_Access_Array (Value : access Java_Object'Class) return CategoryData_Access_Array_Access renames org.allbinary.business.category.CategoryData_Package_References.Java_Unbox_CategoryData_Access_Array;
   subtype CategoryData_Access_Array_Access_Array is org.allbinary.business.category.CategoryData_Package_References.CategoryData_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.CategoryData_Package_References."=";
   subtype CategoryData_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryData_Package_References.CategoryData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryData_Package_References."=";
   function Java_Box (Value : CategoryData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.category.CategoryData_Package_References.Java_Box;
   function Java_Unbox_CategoryData_Access_Array_Access_Array (Value : access Java_Object'Class) return CategoryData_Access_Array_Access_Array_Access renames org.allbinary.business.category.CategoryData_Package_References.Java_Unbox_CategoryData_Access_Array_Access_Array;

   type CategoryData is new Java_Object with record
      PARENT : Unbounded_String;
      NAME : Unbounded_String;
      PATH : Unbounded_String;
      LABEL : Unbounded_String;
      VIEW : Unbounded_String;
      LEVEL : Unbounded_String;
      REQUEST : Unbounded_String;
      ROOTCATEGORY : Unbounded_String;
      UNCRYPTED_EXTENSION : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
   end record;
   instance : CategoryData_Access;

   procedure Initialize (This : in out CategoryData'Class);
   function Create return CategoryData_Access;
   function getInstance return CategoryData_Access;

end org.allbinary.business.category.CategoryData_Package;


