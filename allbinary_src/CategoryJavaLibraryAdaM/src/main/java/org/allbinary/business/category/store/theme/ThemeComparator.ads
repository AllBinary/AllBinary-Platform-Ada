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

limited with org.allbinary.business.category.store.theme.ThemeComparator_Package;
package org.allbinary.business.category.store.theme.ThemeComparator_Package_References is
   type ThemeComparator_Access is access all org.allbinary.business.category.store.theme.ThemeComparator_Package.ThemeComparator'Class;
   type ThemeComparator_Access_Array is array (Natural range <>) of ThemeComparator_Access;
   type ThemeComparator_Access_Array_Access is access all ThemeComparator_Access_Array;
   type ThemeComparator_Access_Array_Access_Array is array (Natural range <>) of ThemeComparator_Access_Array_Access;
   type ThemeComparator_Access_Array_Access_Array_Access is access all ThemeComparator_Access_Array_Access_Array;
end org.allbinary.business.category.store.theme.ThemeComparator_Package_References;

with org.allbinary.business.category.store.theme.ThemeComparator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.Comparator_Package; use java.util.Comparator_Package;

package org.allbinary.business.category.store.theme.ThemeComparator_Package is

   package Comparator_Package renames Standard.java.util.Comparator_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ThemeComparator_Access is org.allbinary.business.category.store.theme.ThemeComparator_Package_References.ThemeComparator_Access;
   function "=" (Left, Right : ThemeComparator_Access) return Boolean renames org.allbinary.business.category.store.theme.ThemeComparator_Package_References."=";
   subtype ThemeComparator_Access_Array is org.allbinary.business.category.store.theme.ThemeComparator_Package_References.ThemeComparator_Access_Array;
   function "=" (Left, Right : ThemeComparator_Access_Array) return Boolean renames org.allbinary.business.category.store.theme.ThemeComparator_Package_References."=";
   subtype ThemeComparator_Access_Array_Access is org.allbinary.business.category.store.theme.ThemeComparator_Package_References.ThemeComparator_Access_Array_Access;
   function "=" (Left, Right : ThemeComparator_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.theme.ThemeComparator_Package_References."=";
   subtype ThemeComparator_Access_Array_Access_Array is org.allbinary.business.category.store.theme.ThemeComparator_Package_References.ThemeComparator_Access_Array_Access_Array;
   function "=" (Left, Right : ThemeComparator_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.store.theme.ThemeComparator_Package_References."=";
   subtype ThemeComparator_Access_Array_Access_Array_Access is org.allbinary.business.category.store.theme.ThemeComparator_Package_References.ThemeComparator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThemeComparator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.theme.ThemeComparator_Package_References."=";

   type ThemeComparator is new Java_Object and Comparator with null record;

   procedure Initialize (This : in out ThemeComparator'Class);
   function Create return ThemeComparator_Access;
   function compare (This : in out ThemeComparator; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class) return Integer;
   procedure compare (This : in out ThemeComparator; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class);

end org.allbinary.business.category.store.theme.ThemeComparator_Package;


