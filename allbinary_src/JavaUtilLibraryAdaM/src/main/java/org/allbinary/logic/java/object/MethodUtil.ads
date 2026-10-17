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
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.logic.java.anyType.MethodUtil_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type MethodUtil is tagged;
   type MethodUtil_Access is access all MethodUtil'Class;
   type MethodUtil_Access_Array is array (Natural range <>) of MethodUtil_Access;
   type MethodUtil_Access_Array_Access is access all MethodUtil_Access_Array;

   type MethodUtil is new Java_Object with null record;

   procedure Initialize (This : in out MethodUtil'Class);
   function Create return MethodUtil_Access;
   function viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) return Unbounded_String;
   procedure viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String);

end org.allbinary.logic.java.anyType.MethodUtil_Package;


