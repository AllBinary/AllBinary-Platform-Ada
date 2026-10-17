-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package is


   type GeographicMapCellHistoryProgressBase is tagged;
   type GeographicMapCellHistoryProgressBase_Access is access all GeographicMapCellHistoryProgressBase'Class;
   type GeographicMapCellHistoryProgressBase_Access_Array is array (Natural range <>) of GeographicMapCellHistoryProgressBase_Access;
   type GeographicMapCellHistoryProgressBase_Access_Array_Access is access all GeographicMapCellHistoryProgressBase_Access_Array;

   type GeographicMapCellHistoryProgressBase is new Java_Object with null record;
   instance : GeographicMapCellHistoryProgressBase_Access;

   procedure Initialize (This : in out GeographicMapCellHistoryProgressBase'Class);
   function Create return GeographicMapCellHistoryProgressBase_Access;
   function getInstance return GeographicMapCellHistoryProgressBase_Access;
   procedure init (This : in out GeographicMapCellHistoryProgressBase);
   function isAnyProgress (This : in out GeographicMapCellHistoryProgressBase) return Boolean;

end org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package;


