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
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.logic.math.SmallIntegerSingletonFactory_Package is

   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type SmallIntegerSingletonFactory is tagged;
   type SmallIntegerSingletonFactory_Access is access all SmallIntegerSingletonFactory'Class;
   type SmallIntegerSingletonFactory_Access_Array is array (Natural range <>) of SmallIntegerSingletonFactory_Access;
   type SmallIntegerSingletonFactory_Access_Array_Access is access all SmallIntegerSingletonFactory_Access_Array;

   type SmallIntegerSingletonFactory is new Java_Object with record
      NEGATIVE_MAX : Integer;
      POSITIVE_MAX : Integer;
      INTEGER_ARRAY : Integer_Array_Access;
      STRING_ARRAY : Unbounded_String_Array_Access;
      MIN : Integer;
      lastMin : Integer;
      lastNegativeMin : Integer;
   end record;
   instance : SmallIntegerSingletonFactory_Access;

   procedure Initialize (This : in out SmallIntegerSingletonFactory'Class);
   function Create return SmallIntegerSingletonFactory_Access;
   function getInstance return SmallIntegerSingletonFactory_Access;
   function getMin (This : in out SmallIntegerSingletonFactory) return Integer;
   function getMinAllowed (This : in out SmallIntegerSingletonFactory) return Integer;
   procedure initWithRange (This : in out SmallIntegerSingletonFactory; value : Integer; negativeValue : Integer);
   procedure init (This : in out SmallIntegerSingletonFactory);
   function getAt (This : in out SmallIntegerSingletonFactory; index : Integer) return Integer;
   procedure getAt (This : in out SmallIntegerSingletonFactory; index : Integer);
   function getAtNoThrow (This : in out SmallIntegerSingletonFactory; index : Integer) return Integer;
   procedure getAtNoThrow (This : in out SmallIntegerSingletonFactory; index : Integer);
   function createInstance (This : in out SmallIntegerSingletonFactory; index : Integer) return Integer;
   procedure createInstance (This : in out SmallIntegerSingletonFactory; index : Integer);
   function getString (This : in out SmallIntegerSingletonFactory; index : Integer) return Unbounded_String;
   procedure getString (This : in out SmallIntegerSingletonFactory; index : Integer);

end org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;


