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
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.math.permutations.Comparable_Package; use org.allbinary.logic.math.permutations.Comparable_Package;

package org.allbinary.logic.math.permutations.ComparableObject_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;

   type ComparableObject is tagged;
   type ComparableObject_Access is access all ComparableObject'Class;
   type ComparableObject_Access_Array is array (Natural range <>) of ComparableObject_Access;
   type ComparableObject_Access_Array_Access is access all ComparableObject_Access_Array;

   type ComparableObject is new Comparable with null record;

   procedure Initialize (This : in out ComparableObject'Class);
   function Create return ComparableObject_Access;
   function compareTo (This : in out ComparableObject; anyType_Param : access Java_Object'Class) return Integer;
   procedure compareTo (This : in out ComparableObject; anyType_Param : access Java_Object'Class);

end org.allbinary.logic.math.permutations.ComparableObject_Package;


