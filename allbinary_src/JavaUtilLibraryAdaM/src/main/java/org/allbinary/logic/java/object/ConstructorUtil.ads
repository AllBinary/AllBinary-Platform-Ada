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
--  with java.lang.reflect.Constructor_Package; use java.lang.reflect.Constructor_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.logic.java.anyType.ConstructorUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type ConstructorUtil is tagged;
   type ConstructorUtil_Access is access all ConstructorUtil'Class;
   type ConstructorUtil_Access_Array is array (Natural range <>) of ConstructorUtil_Access;
   type ConstructorUtil_Access_Array_Access is access all ConstructorUtil_Access_Array;

   type ConstructorUtil is new Java_Object with null record;

   procedure Initialize (This : in out ConstructorUtil'Class);
   function Create return ConstructorUtil_Access;
   function viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) return Unbounded_String;
   procedure viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String);
   function view (constructor_Param : access Constructor'Class; lineBreak : Unbounded_String) return Unbounded_String;
   procedure view (constructor_Param : access Constructor'Class; lineBreak : Unbounded_String);

end org.allbinary.logic.java.anyType.ConstructorUtil_Package;


