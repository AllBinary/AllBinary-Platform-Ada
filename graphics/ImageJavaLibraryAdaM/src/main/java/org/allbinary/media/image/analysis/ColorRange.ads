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
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package; use org.allbinary.media.image.analysis.ColorRangeInterface_Package;

package org.allbinary.media.image.analysis.ColorRange_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type ColorRange is tagged;
   type ColorRange_Access is access all ColorRange'Class;
   type ColorRange_Access_Array is array (Natural range <>) of ColorRange_Access;
   type ColorRange_Access_Array_Access is access all ColorRange_Access_Array;

   type ColorRange is new ColorRangeInterface with record
      minRed : Integer;
      maxRed : Integer;
      minGreen : Integer;
      maxGreen : Integer;
      minBlue : Integer;
      maxBlue : Integer;
   end record;

   procedure Initialize (This : in out ColorRange'Class);
   function Create return ColorRange_Access;
   function getMinRed (This : in out ColorRange) return Integer;
   procedure getMinRed (This : in out ColorRange);
   procedure setMinRed (This : in out ColorRange; minRed : Integer);
   function getMaxRed (This : in out ColorRange) return Integer;
   procedure getMaxRed (This : in out ColorRange);
   procedure setMaxRed (This : in out ColorRange; maxRed : Integer);
   function getMinGreen (This : in out ColorRange) return Integer;
   procedure getMinGreen (This : in out ColorRange);
   procedure setMinGreen (This : in out ColorRange; minGreen : Integer);
   function getMaxGreen (This : in out ColorRange) return Integer;
   procedure getMaxGreen (This : in out ColorRange);
   procedure setMaxGreen (This : in out ColorRange; maxGreen : Integer);
   function getMinBlue (This : in out ColorRange) return Integer;
   procedure getMinBlue (This : in out ColorRange);
   procedure setMinBlue (This : in out ColorRange; minBlue : Integer);
   function getMaxBlue (This : in out ColorRange) return Integer;
   procedure getMaxBlue (This : in out ColorRange);
   procedure setMaxBlue (This : in out ColorRange; maxBlue : Integer);
   function isInRange (This : in out ColorRange; color : Color_Access) return Boolean;
   procedure isInRange (This : in out ColorRange; color : Color_Access);
   function toString (This : in out ColorRange) return Unbounded_String;
   procedure toString (This : in out ColorRange);

end org.allbinary.media.image.analysis.ColorRange_Package;


