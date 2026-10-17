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

package org.allbinary.media.image.analysis.ColorRangeInterface_Package is


   type ColorRangeInterface is interface;
   type ColorRangeInterface_Access is access all ColorRangeInterface'Class;
   type ColorRangeInterface_Access_Array is array (Natural range <>) of ColorRangeInterface_Access;
   type ColorRangeInterface_Access_Array_Access is access all ColorRangeInterface_Access_Array;
   function getMinRed (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMinRed (This : in out ColorRangeInterface; minRed : Integer) is abstract;
   function getMaxRed (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMaxRed (This : in out ColorRangeInterface; maxRed : Integer) is abstract;
   function getMinGreen (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMinGreen (This : in out ColorRangeInterface; minGreen : Integer) is abstract;
   function getMaxGreen (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMaxGreen (This : in out ColorRangeInterface; maxGreen : Integer) is abstract;
   function getMinBlue (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMinBlue (This : in out ColorRangeInterface; minBlue : Integer) is abstract;
   function getMaxBlue (This : in out ColorRangeInterface) return Integer is abstract;
   procedure setMaxBlue (This : in out ColorRangeInterface; maxBlue : Integer) is abstract;
   function isInRange (This : in out ColorRangeInterface; color : Color_Access) return Boolean is abstract;

end org.allbinary.media.image.analysis.ColorRangeInterface_Package;


