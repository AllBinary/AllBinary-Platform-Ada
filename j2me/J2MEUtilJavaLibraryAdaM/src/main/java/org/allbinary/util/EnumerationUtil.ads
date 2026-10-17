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
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
--  with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.util.EnumerationUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;

   type EnumerationUtil is tagged;
   type EnumerationUtil_Access is access all EnumerationUtil'Class;
   type EnumerationUtil_Access_Array is array (Natural range <>) of EnumerationUtil_Access;
   type EnumerationUtil_Access_Array_Access is access all EnumerationUtil_Access_Array;

   type EnumerationUtil is new Java_Object with null record;
   instance : EnumerationUtil_Access;

   procedure Initialize (This : in out EnumerationUtil'Class);
   function Create return EnumerationUtil_Access;
   function getInstance return EnumerationUtil_Access;
   function hasMoreElements (This : in out EnumerationUtil; enumeration : Enumeration_Access) return Boolean;
   procedure hasMoreElements (This : in out EnumerationUtil; enumeration : Enumeration_Access);
   function nextElement (This : in out EnumerationUtil; enumeration : Enumeration_Access) return Java_Object_Access;
   procedure nextElement (This : in out EnumerationUtil; enumeration : Enumeration_Access);
   function getAsArray (This : in out EnumerationUtil; enumeration : Enumeration_Access) return Java_Object_Access_Array_Access;
   procedure getAsArray (This : in out EnumerationUtil; enumeration : Enumeration_Access);

end org.allbinary.util.EnumerationUtil_Package;


