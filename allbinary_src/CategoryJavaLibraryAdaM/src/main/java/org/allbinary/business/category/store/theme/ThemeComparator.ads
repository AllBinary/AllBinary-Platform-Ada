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
--  with java.util.Comparator_Package; use java.util.Comparator_Package;

package org.allbinary.business.category.store.theme.ThemeComparator_Package is


   type ThemeComparator is tagged;
   type ThemeComparator_Access is access all ThemeComparator'Class;
   type ThemeComparator_Access_Array is array (Natural range <>) of ThemeComparator_Access;
   type ThemeComparator_Access_Array_Access is access all ThemeComparator_Access_Array;

   type ThemeComparator is new Comparator with null record;

   procedure Initialize (This : in out ThemeComparator'Class);
   function Create return ThemeComparator_Access;
   function compare (This : in out ThemeComparator; anyType : Java_Object_Access; object2 : Java_Object_Access) return Integer;
   procedure compare (This : in out ThemeComparator; anyType : Java_Object_Access; object2 : Java_Object_Access);

end org.allbinary.business.category.store.theme.ThemeComparator_Package;


