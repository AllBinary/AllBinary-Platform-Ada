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

package org.allbinary.math.PositionStrings_Package is


   type PositionStrings is tagged;
   type PositionStrings_Access is access all PositionStrings'Class;
   type PositionStrings_Access_Array is array (Natural range <>) of PositionStrings_Access;
   type PositionStrings_Access_Array_Access is access all PositionStrings_Access_Array;
   type PositionStrings_Access_Array_Access_Array is array (Natural range <>) of PositionStrings_Access_Array_Access;
   type PositionStrings_Access_Array_Access_Array_Access is access all PositionStrings_Access_Array_Access_Array;

   type PositionStrings is new Java_Object with record
      X : Unbounded_String;
      Y : Unbounded_String;
      X_LABEL : Unbounded_String;
      Y_LABEL : Unbounded_String;
      Z_LABEL : Unbounded_String;
      DX_LABEL : Unbounded_String;
      DY_LABEL : Unbounded_String;
      DZ_LABEL : Unbounded_String;
   end record;
   instance : PositionStrings_Access;

   procedure Initialize (This : in out PositionStrings'Class);
   function Create return PositionStrings_Access;
   function getInstance return PositionStrings_Access;

end org.allbinary.math.PositionStrings_Package;


