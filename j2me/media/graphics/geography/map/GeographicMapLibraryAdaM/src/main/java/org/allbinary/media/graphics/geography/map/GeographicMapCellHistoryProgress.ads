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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type GeographicMapCellHistoryProgress is tagged;
   type GeographicMapCellHistoryProgress_Access is access all GeographicMapCellHistoryProgress'Class;
   type GeographicMapCellHistoryProgress_Access_Array is array (Natural range <>) of GeographicMapCellHistoryProgress_Access;
   type GeographicMapCellHistoryProgress_Access_Array_Access is access all GeographicMapCellHistoryProgress_Access_Array;

   type GeographicMapCellHistoryProgress is new GeographicMapCellHistoryProgressBase with record
      totalVisitedArray : Integer_Array_Access;
      geographicMapCellHistoryArray : GeographicMapCellHistory_Access_Array_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellHistoryProgress'Class; geographicMapCellHistoryArray : GeographicMapCellHistory_Access_Array_Access);
   function Create (geographicMapCellHistoryArray : GeographicMapCellHistory_Access_Array_Access) return GeographicMapCellHistoryProgress_Access;
   procedure init (This : in out GeographicMapCellHistoryProgress);
   function isAnyProgress (This : in out GeographicMapCellHistoryProgress) return Boolean;

end org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package;


