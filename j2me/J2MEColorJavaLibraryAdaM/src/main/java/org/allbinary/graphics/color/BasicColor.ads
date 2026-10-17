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
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package org.allbinary.graphics.color.BasicColor_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;

   type BasicColor is tagged;
   type BasicColor_Access is access all BasicColor'Class;
   type BasicColor_Access_Array is array (Natural range <>) of BasicColor_Access;
   type BasicColor_Access_Array_Access is access all BasicColor_Access_Array;

   type BasicColor is new Java_Object with record
      name : Unbounded_String;
      value : Integer;
      redComponent : Float;
      greenComponent : Float;
      blueComponent : Float;
      alphaComponent : Float;
      red : Short_Integer;
      green : Short_Integer;
      blue : Short_Integer;
      alpha : Short_Integer;
   end record;

   procedure Initialize (This : in out BasicColor'Class; alphaValue : Integer; value : Integer; name : Unbounded_String);
   function Create (alphaValue : Integer; value : Integer; name : Unbounded_String) return BasicColor_Access;
   function intValue (This : in out BasicColor) return Integer;
   procedure intValue (This : in out BasicColor);
   function toInt (This : in out BasicColor) return Integer;
   procedure toInt (This : in out BasicColor);
   function toString (This : in out BasicColor) return Unbounded_String;
   procedure toString (This : in out BasicColor);
   function getName (This : in out BasicColor) return Unbounded_String;
   procedure getName (This : in out BasicColor);
   function getRedComponent (This : in out BasicColor) return Float;
   procedure getRedComponent (This : in out BasicColor);
   function getGreenComponent (This : in out BasicColor) return Float;
   procedure getGreenComponent (This : in out BasicColor);
   function getBlueComponent (This : in out BasicColor) return Float;
   procedure getBlueComponent (This : in out BasicColor);
   function getAlphaComponent (This : in out BasicColor) return Float;
   procedure getAlphaComponent (This : in out BasicColor);

end org.allbinary.graphics.color.BasicColor_Package;


