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
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package is


   type GeographicMapCellPositionBaseFactory is tagged;
   type GeographicMapCellPositionBaseFactory_Access is access all GeographicMapCellPositionBaseFactory'Class;
   type GeographicMapCellPositionBaseFactory_Access_Array is array (Natural range <>) of GeographicMapCellPositionBaseFactory_Access;
   type GeographicMapCellPositionBaseFactory_Access_Array_Access is access all GeographicMapCellPositionBaseFactory_Access_Array;

   type GeographicMapCellPositionBaseFactory is new Java_Object with null record;

   procedure Initialize (This : in out GeographicMapCellPositionBaseFactory'Class);
   function Create return GeographicMapCellPositionBaseFactory_Access;
   function getInstance (This : in out GeographicMapCellPositionBaseFactory; geographicMapInterface : BasicGeographicMap_Access) return BasicGeographicMapCellPositionFactory_Access;
   procedure getInstance (This : in out GeographicMapCellPositionBaseFactory; geographicMapInterface : BasicGeographicMap_Access);

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;


