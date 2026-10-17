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

package org.allbinary.logic.java.character_Id.CharArrayFactory_Package is


   type CharArrayFactory is tagged;
   type CharArrayFactory_Access is access all CharArrayFactory'Class;
   type CharArrayFactory_Access_Array is array (Natural range <>) of CharArrayFactory_Access;
   type CharArrayFactory_Access_Array_Access is access all CharArrayFactory_Access_Array;

   type CharArrayFactory is new Java_Object with record
      zeroCharArray : Character_Array_Access;
   end record;
   instance : CharArrayFactory_Access;

   procedure Initialize (This : in out CharArrayFactory'Class);
   function Create return CharArrayFactory_Access;
   function getInstance return CharArrayFactory_Access;
   procedure getInstance;
   function getZeroCharArray (This : in out CharArrayFactory) return Character_Array_Access;
   procedure getZeroCharArray (This : in out CharArrayFactory);

end org.allbinary.logic.java.character_Id.CharArrayFactory_Package;


