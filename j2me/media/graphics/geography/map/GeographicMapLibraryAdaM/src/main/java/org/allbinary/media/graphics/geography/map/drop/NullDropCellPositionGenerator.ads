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
with org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package; use org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package;

package org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package is


   type NullDropCellPositionGenerator is tagged;
   type NullDropCellPositionGenerator_Access is access all NullDropCellPositionGenerator'Class;
   type NullDropCellPositionGenerator_Access_Array is array (Natural range <>) of NullDropCellPositionGenerator_Access;
   type NullDropCellPositionGenerator_Access_Array_Access is access all NullDropCellPositionGenerator_Access_Array;
   type NullDropCellPositionGenerator_Access_Array_Access_Array is array (Natural range <>) of NullDropCellPositionGenerator_Access_Array_Access;
   type NullDropCellPositionGenerator_Access_Array_Access_Array_Access is access all NullDropCellPositionGenerator_Access_Array_Access_Array;

   type NullDropCellPositionGenerator is new BaseDropCellPositionGenerator with null record;
   instance : NullDropCellPositionGenerator_Access;

   procedure Initialize (This : in out NullDropCellPositionGenerator'Class);
   function Create return NullDropCellPositionGenerator_Access;
   function getInstance return NullDropCellPositionGenerator_Access;

end org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package;


