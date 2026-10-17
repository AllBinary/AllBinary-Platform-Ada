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

package org.allbinary.logic.java.bool.BooleanFactory_Package is


   type BooleanFactory is tagged;
   type BooleanFactory_Access is access all BooleanFactory'Class;
   type BooleanFactory_Access_Array is array (Natural range <>) of BooleanFactory_Access;
   type BooleanFactory_Access_Array_Access is access all BooleanFactory_Access_Array;

   type BooleanFactory is new Java_Object with record
      TRUE : Boolean;
      FALSE : Boolean;
      TRUE_STRING : Unbounded_String;
      FALSE_STRING : Unbounded_String;
      YES : Unbounded_String;
      NO : Unbounded_String;
   end record;
   instance : BooleanFactory_Access;

   procedure Initialize (This : in out BooleanFactory'Class);
   function Create return BooleanFactory_Access;
   function getInstance return BooleanFactory_Access;
   procedure getInstance;
   function toStringb (This : in out BooleanFactory; bool : Boolean) return Unbounded_String;
   procedure toStringb (This : in out BooleanFactory; bool : Boolean);

end org.allbinary.logic.java.bool.BooleanFactory_Package;


