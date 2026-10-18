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
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;

package org.allbinary.logic.java.bool.BooleanUtil_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;

   type BooleanUtil is tagged;
   type BooleanUtil_Access is access all BooleanUtil'Class;
   type BooleanUtil_Access_Array is array (Natural range <>) of BooleanUtil_Access;
   type BooleanUtil_Access_Array_Access is access all BooleanUtil_Access_Array;
   type BooleanUtil_Access_Array_Access_Array is array (Natural range <>) of BooleanUtil_Access_Array_Access;
   type BooleanUtil_Access_Array_Access_Array_Access is access all BooleanUtil_Access_Array_Access_Array;

   type BooleanUtil is new Java_Object with record
      tsUtil : TsUtil_Access;
   end record;
   instance : BooleanUtil_Access;

   procedure Initialize (This : in out BooleanUtil'Class);
   function Create return BooleanUtil_Access;
   function getInstance return BooleanUtil_Access;
   function getFromString (This : in out BooleanUtil; booleanString : Unbounded_String) return Boolean;
   procedure getFromString (This : in out BooleanUtil; booleanString : Unbounded_String);
   function isStringBoolean (This : in out BooleanUtil; booleanString : Unbounded_String) return Boolean;
   procedure isStringBoolean (This : in out BooleanUtil; booleanString : Unbounded_String);
   function toStringFromBooleanArray (This : in out BooleanUtil; booleanArray : Boolean_Array_Access) return Unbounded_String;
   procedure toStringFromBooleanArray (This : in out BooleanUtil; booleanArray : Boolean_Array_Access);

end org.allbinary.logic.java.bool.BooleanUtil_Package;


