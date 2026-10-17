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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.logic.java.anyType.InterfaceUtil_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type InterfaceUtil is tagged;
   type InterfaceUtil_Access is access all InterfaceUtil'Class;
   type InterfaceUtil_Access_Array is array (Natural range <>) of InterfaceUtil_Access;
   type InterfaceUtil_Access_Array_Access is access all InterfaceUtil_Access_Array;

   type InterfaceUtil is new Java_Object with null record;

   procedure Initialize (This : in out InterfaceUtil'Class);
   function Create return InterfaceUtil_Access;
   function viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) return Unbounded_String;
   procedure viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String);
   function getClass (interfaceName : Unbounded_String; interfaces : Ada_Tags_Tag_Array_Access) return Ada.Tags.Tag;
   procedure getClass (interfaceName : Unbounded_String; interfaces : Ada_Tags_Tag_Array_Access);
   function isImplemented (clazz : Ada.Tags.Tag; anyType : Java_Object_Access) return Boolean;
   procedure isImplemented (clazz : Ada.Tags.Tag; anyType : Java_Object_Access);
   function isImplemented (className : Unbounded_String; anyType : Java_Object_Access) return Boolean;
   procedure isImplemented (className : Unbounded_String; anyType : Java_Object_Access);
   function isImplementedView (clazz : Ada.Tags.Tag; anyType : Java_Object_Access) return Unbounded_String;
   procedure isImplementedView (clazz : Ada.Tags.Tag; anyType : Java_Object_Access);

end org.allbinary.logic.java.anyType.InterfaceUtil_Package;


