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

package org.allbinary.graphics.color.BasicColor_Package is


   type BasicColor is tagged;
   type BasicColor_Access is access all BasicColor'Class;
   type BasicColor_Access_Array is array (Natural range <>) of BasicColor_Access;
   type BasicColor_Access_Array_Access is access all BasicColor_Access_Array;
   type BasicColor_Access_Array_Access_Array is array (Natural range <>) of BasicColor_Access_Array_Access;
   type BasicColor_Access_Array_Access_Array_Access is access all BasicColor_Access_Array_Access_Array;

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
   function toInt (This : in out BasicColor) return Integer;
   function toString (This : in out BasicColor) return Unbounded_String;
   function getName (This : in out BasicColor) return Unbounded_String;
   function getRedComponent (This : in out BasicColor) return Float;
   function getGreenComponent (This : in out BasicColor) return Float;
   function getBlueComponent (This : in out BasicColor) return Float;
   function getAlphaComponent (This : in out BasicColor) return Float;

end org.allbinary.graphics.color.BasicColor_Package;


