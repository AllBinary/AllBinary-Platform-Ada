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
with org.allbinary.logic.java.anyType.ConstructorUtil_Package; use org.allbinary.logic.java.anyType.ConstructorUtil_Package;
with org.allbinary.logic.java.anyType.InterfaceUtil_Package; use org.allbinary.logic.java.anyType.InterfaceUtil_Package;
with org.allbinary.logic.java.anyType.MethodUtil_Package; use org.allbinary.logic.java.anyType.MethodUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.logic.java.anyType.clazz.ClassUtil_Package is

   package ConstructorUtil_Package renames Standard.org.allbinary.logic.java.anyType.ConstructorUtil_Package;
   package InterfaceUtil_Package renames Standard.org.allbinary.logic.java.anyType.InterfaceUtil_Package;
   package MethodUtil_Package renames Standard.org.allbinary.logic.java.anyType.MethodUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type ClassUtil is tagged;
   type ClassUtil_Access is access all ClassUtil'Class;
   type ClassUtil_Access_Array is array (Natural range <>) of ClassUtil_Access;
   type ClassUtil_Access_Array_Access is access all ClassUtil_Access_Array;

   type ClassUtil is new Java_Object with null record;

   procedure Initialize (This : in out ClassUtil'Class);
   function Create return ClassUtil_Access;
   function viewAll (anyType_Param : access Java_Object'Class; lineBreak : Unbounded_String) return Unbounded_String;
   procedure viewAll (anyType_Param : access Java_Object'Class; lineBreak : Unbounded_String);
   function viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) return Unbounded_String;
   procedure viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String);

end org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;


