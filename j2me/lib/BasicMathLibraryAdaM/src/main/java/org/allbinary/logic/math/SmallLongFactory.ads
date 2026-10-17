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

package org.allbinary.logic.math.SmallLongFactory_Package is


   type SmallLongFactory is tagged;
   type SmallLongFactory_Access is access all SmallLongFactory'Class;
   type SmallLongFactory_Access_Array is array (Natural range <>) of SmallLongFactory_Access;
   type SmallLongFactory_Access_Array_Access is access all SmallLongFactory_Access_Array;

   type SmallLongFactory is new Java_Object with record
      NEGATIVE_MAX : Integer;
      POSITIVE_MAX : Integer;
      INTEGER_ARRAY : Long_Long_Integer_Array_Access;
      STRING_ARRAY : Unbounded_String_Array_Access;
      MIN : Integer;
      lastMin : Integer;
      lastNegativeMin : Integer;
   end record;
   instance : SmallLongFactory_Access;

   procedure Initialize (This : in out SmallLongFactory'Class);
   function Create return SmallLongFactory_Access;
   function getInstance return SmallLongFactory_Access;
   procedure initWithRange (This : in out SmallLongFactory; value : Integer; negativeValue : Integer);
   procedure init (This : in out SmallLongFactory);
   function getInstanceNoThrow (This : in out SmallLongFactory; index : Long_Long_Integer) return Long_Long_Integer;
   procedure getInstanceNoThrow (This : in out SmallLongFactory; index : Long_Long_Integer);
   function getString (This : in out SmallLongFactory; index : Integer) return Unbounded_String;
   procedure getString (This : in out SmallLongFactory; index : Integer);

end org.allbinary.logic.math.SmallLongFactory_Package;


