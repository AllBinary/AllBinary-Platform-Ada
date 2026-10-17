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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package org.allbinary.util.CircularIndexUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;

   type CircularIndexUtil is tagged;
   type CircularIndexUtil_Access is access all CircularIndexUtil'Class;
   type CircularIndexUtil_Access_Array is array (Natural range <>) of CircularIndexUtil_Access;
   type CircularIndexUtil_Access_Array_Access is access all CircularIndexUtil_Access_Array;

   type CircularIndexUtil is new Java_Object with record
      index : Integer;
      lastIndex : Integer;
      size : Integer;
   end record;
   NULL_CIRCULAR_INDEX_UTIL : CircularIndexUtil_Access;

   procedure Initialize (This : in out CircularIndexUtil'Class; index : Integer; size : Integer);
   function Create (index : Integer; size : Integer) return CircularIndexUtil_Access;
   function next (This : in out CircularIndexUtil) return Integer;
   function previous (This : in out CircularIndexUtil) return Integer;
   procedure setIndex (This : in out CircularIndexUtil; index : Integer);
   function getIndex (This : in out CircularIndexUtil) return Integer;
   function createInstance (max : Integer) return CircularIndexUtil_Access;
   procedure createInstance (max : Integer);
   function createInstanceAt (index : Integer; max : Integer) return CircularIndexUtil_Access;
   procedure createInstanceAt (index : Integer; max : Integer);
   procedure setSize (This : in out CircularIndexUtil; size : Integer);
   function getSize (This : in out CircularIndexUtil) return Integer;
   function toString (This : in out CircularIndexUtil) return Unbounded_String;

end org.allbinary.util.CircularIndexUtil_Package;


