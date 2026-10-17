-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.osgi.framework.NullServiceReference_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type NullServiceReference is tagged;
   type NullServiceReference_Access is access all NullServiceReference'Class;
   type NullServiceReference_Access_Array is array (Natural range <>) of NullServiceReference_Access;
   type NullServiceReference_Access_Array_Access is access all NullServiceReference_Access_Array;

   type NullServiceReference is new Java_Object with null record;

   procedure Initialize (This : in out NullServiceReference'Class);
   function Create return NullServiceReference_Access;
   function getProperty (This : in out NullServiceReference; key : Unbounded_String) return Java_Object_Access;
   procedure getProperty (This : in out NullServiceReference; key : Unbounded_String);
   function getPropertyKeys (This : in out NullServiceReference) return Unbounded_String_Array_Access;
   procedure getPropertyKeys (This : in out NullServiceReference);
   function compareTo (This : in out NullServiceReference; o : Java_Object_Access) return Integer;
   procedure compareTo (This : in out NullServiceReference; o : Java_Object_Access);

end org.osgi.framework.NullServiceReference_Package;


