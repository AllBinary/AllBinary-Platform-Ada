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
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.direction.DirectionFactory_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonPhoneStrings_Package renames org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type DirectionFactory is tagged;
   type DirectionFactory_Access is access all DirectionFactory'Class;
   type DirectionFactory_Access_Array is array (Natural range <>) of DirectionFactory_Access;
   type DirectionFactory_Access_Array_Access is access all DirectionFactory_Access_Array;

   type DirectionFactory is new Java_Object with record
      NAME : Unbounded_String;
      LEFT : Direction_Access;
      RIGHT : Direction_Access;
      DOWN : Direction_Access;
      UP : Direction_Access;
      UP_LEFT : Direction_Access;
      UP_RIGHT : Direction_Access;
      DOWN_LEFT : Direction_Access;
      DOWN_RIGHT : Direction_Access;
      NOT_BORDERED_WITH : Direction_Access;
      NO_DIRECTION : Direction_Access;
      TOP : Direction_Access;
      BOTTOM : Direction_Access;
      ALL_DIRECTION : Direction_Access;
   end record;
   instance : DirectionFactory_Access;

   procedure Initialize (This : in out DirectionFactory'Class);
   function Create return DirectionFactory_Access;
   function getInstance return DirectionFactory_Access;
   procedure getInstance;

end org.allbinary.direction.DirectionFactory_Package;


