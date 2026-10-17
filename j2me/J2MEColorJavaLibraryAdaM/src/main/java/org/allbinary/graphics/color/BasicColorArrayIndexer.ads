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
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;

package org.allbinary.graphics.color.BasicColorArrayIndexer_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;

   type BasicColorArrayIndexer is tagged;
   type BasicColorArrayIndexer_Access is access all BasicColorArrayIndexer'Class;
   type BasicColorArrayIndexer_Access_Array is array (Natural range <>) of BasicColorArrayIndexer_Access;
   type BasicColorArrayIndexer_Access_Array_Access is access all BasicColorArrayIndexer_Access_Array;

   type BasicColorArrayIndexer is new Java_Object with record
      basicColorArray : BasicColor_Access_Array_Access;
      circularIndexUtil : CircularIndexUtil_Access;
   end record;

   procedure Initialize (This : in out BasicColorArrayIndexer'Class; basicColorArray : BasicColor_Access_Array_Access);
   function Create (basicColorArray : BasicColor_Access_Array_Access) return BasicColorArrayIndexer_Access;
   procedure next (This : in out BasicColorArrayIndexer);
   function get (This : in out BasicColorArrayIndexer) return BasicColor_Access;
   procedure get (This : in out BasicColorArrayIndexer);
   function getBasicColorArray (This : in out BasicColorArrayIndexer) return BasicColor_Access_Array_Access;
   procedure getBasicColorArray (This : in out BasicColorArrayIndexer);

end org.allbinary.graphics.color.BasicColorArrayIndexer_Package;


