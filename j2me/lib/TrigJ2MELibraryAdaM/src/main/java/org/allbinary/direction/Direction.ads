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

package org.allbinary.direction.Direction_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type Direction is tagged;
   type Direction_Access is access all Direction'Class;
   type Direction_Access_Array is array (Natural range <>) of Direction_Access;
   type Direction_Access_Array_Access is access all Direction_Access_Array;

   type Direction is new Java_Object with record
      name : Unbounded_String;
      otherName : Unbounded_String;
      value : Integer;
      frameFactor : Integer;
   end record;
   directionArray : Direction_Access_Array_Access;

   procedure Initialize (This : in out Direction'Class; name : Unbounded_String; otherName : Unbounded_String; value : Integer; frameFactor : Integer);
   function Create (name : Unbounded_String; otherName : Unbounded_String; value : Integer; frameFactor : Integer) return Direction_Access;
   function getInstance (direction : Integer) return Direction_Access;
   procedure getInstance (direction : Integer);
   function getValue (This : in out Direction) return Integer;
   function getFrameFactor (This : in out Direction) return Integer;
   function getOtherName (This : in out Direction) return Unbounded_String;
   function getName (This : in out Direction) return Unbounded_String;
   function toString (This : in out Direction) return Unbounded_String;

end org.allbinary.direction.Direction_Package;


