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
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.input.motion.button.TouchButtonLocationHelper_Package is

   package DisplayInfoSingleton_Package renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type TouchButtonLocationHelper is tagged;
   type TouchButtonLocationHelper_Access is access all TouchButtonLocationHelper'Class;
   type TouchButtonLocationHelper_Access_Array is array (Natural range <>) of TouchButtonLocationHelper_Access;
   type TouchButtonLocationHelper_Access_Array_Access is access all TouchButtonLocationHelper_Access_Array;

   type TouchButtonLocationHelper is new Java_Object with record
      totalColumns : Integer;
      totalRows : Integer;
      columnsRemainder : Integer;
      rowsRemainder : Integer;
      columnsRemainderHalf : Integer;
      rowsRemainderHalf : Integer;
   end record;

   procedure Initialize (This : in out TouchButtonLocationHelper'Class);
   function Create return TouchButtonLocationHelper_Access;
   function getTotalColumns (This : in out TouchButtonLocationHelper) return Integer;
   procedure getTotalColumns (This : in out TouchButtonLocationHelper);
   function getTotalRows (This : in out TouchButtonLocationHelper) return Integer;
   procedure getTotalRows (This : in out TouchButtonLocationHelper);
   function getColumnsRemainder (This : in out TouchButtonLocationHelper) return Integer;
   procedure getColumnsRemainder (This : in out TouchButtonLocationHelper);
   function getRowsRemainder (This : in out TouchButtonLocationHelper) return Integer;
   procedure getRowsRemainder (This : in out TouchButtonLocationHelper);
   function getColumnsRemainderHalf (This : in out TouchButtonLocationHelper) return Integer;
   procedure getColumnsRemainderHalf (This : in out TouchButtonLocationHelper);
   function getRowsRemainderHalf (This : in out TouchButtonLocationHelper) return Integer;
   procedure getRowsRemainderHalf (This : in out TouchButtonLocationHelper);
   function toString (This : in out TouchButtonLocationHelper) return Unbounded_String;
   procedure toString (This : in out TouchButtonLocationHelper);

end org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;


