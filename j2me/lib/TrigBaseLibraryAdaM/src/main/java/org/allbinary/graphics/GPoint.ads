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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.graphics.GPoint_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type GPoint is tagged;
   type GPoint_Access is access all GPoint'Class;
   type GPoint_Access_Array is array (Natural range <>) of GPoint_Access;
   type GPoint_Access_Array_Access is access all GPoint_Access_Array;

   type GPoint is new Java_Object with record
      x : Integer;
      y : Integer;
      z : Integer;
   end record;
   POINT_LABEL : Unbounded_String;

   procedure Initialize (This : in out GPoint'Class; x : Integer; y : Integer; z : Integer);
   function Create (x : Integer; y : Integer; z : Integer) return GPoint_Access;
   function getInstance (point : GPoint_Access) return GPoint_Access;
   procedure getInstance (point : GPoint_Access);
   function getX (This : in out GPoint) return Integer;
   procedure getX (This : in out GPoint);
   function getY (This : in out GPoint) return Integer;
   procedure getY (This : in out GPoint);
   function getZ (This : in out GPoint) return Integer;
   procedure getZ (This : in out GPoint);
   function getRawX (This : in out GPoint) return Integer;
   procedure getRawX (This : in out GPoint);
   function getRawY (This : in out GPoint) return Integer;
   procedure getRawY (This : in out GPoint);
   function getRawZ (This : in out GPoint) return Integer;
   procedure getRawZ (This : in out GPoint);
   function toString (This : in out GPoint) return Unbounded_String;
   procedure toString (This : in out GPoint);
   function toStringStatic (x : Integer; y : Integer; z : Integer) return Unbounded_String;
   procedure toStringStatic (x : Integer; y : Integer; z : Integer);

end org.allbinary.graphics.GPoint_Package;


