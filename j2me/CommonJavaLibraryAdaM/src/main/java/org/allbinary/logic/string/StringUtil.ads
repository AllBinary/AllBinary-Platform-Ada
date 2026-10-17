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
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package org.allbinary.logic.string_Id.StringUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;

   type StringUtil is tagged;
   type StringUtil_Access is access all StringUtil'Class;
   type StringUtil_Access_Array is array (Natural range <>) of StringUtil_Access;
   type StringUtil_Access_Array_Access is access all StringUtil_Access_Array;

   type StringUtil is new Java_Object with record
      INIT_STRING : Unbounded_String;
      NULL_STRING : Unbounded_String;
      EMPTY_STRING : Unbounded_String;
      ONE_EMPTY_STRING_ARRAY : Unbounded_String_Array_Access;
      stringArray : Unbounded_String_Array_Access;
   end record;
   instance : StringUtil_Access;

   procedure Initialize (This : in out StringUtil'Class);
   function Create return StringUtil_Access;
   function getInstance return StringUtil_Access;
   function getNonNull (This : in out StringUtil; string_Id : Unbounded_String) return Unbounded_String;
   procedure getNonNull (This : in out StringUtil; string_Id : Unbounded_String);
   function getArrayInstance (This : in out StringUtil) return Unbounded_String_Array_Access;
   function count (This : in out StringUtil; string_Id : Unbounded_String; aChar : Character) return Integer;
   procedure count (This : in out StringUtil; string_Id : Unbounded_String; aChar : Character);
   function toString (This : in out StringUtil; anyType : Java_Object_Access) return Unbounded_String;
   procedure toString (This : in out StringUtil; anyType : Java_Object_Access);

end org.allbinary.logic.string_Id.StringUtil_Package;


