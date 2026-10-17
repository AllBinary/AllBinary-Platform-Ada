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
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package is

   package AllBinaryGameCanvasInterface_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type GeographicMapCellPositionTracking is tagged;
   type GeographicMapCellPositionTracking_Access is access all GeographicMapCellPositionTracking'Class;
   type GeographicMapCellPositionTracking_Access_Array is array (Natural range <>) of GeographicMapCellPositionTracking_Access;
   type GeographicMapCellPositionTracking_Access_Array_Access is access all GeographicMapCellPositionTracking_Access_Array;

   type GeographicMapCellPositionTracking is new Java_Object with record
      currentGeographicMapCellPosition : GeographicMapCellPosition_Access;
      previousGeographicMapCellPosition : GeographicMapCellPosition_Access;
      newGeographicMapCellPosition : GeographicMapCellPosition_Access;
      currentCellType : GeographicMapCellType_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellPositionTracking'Class);
   function Create return GeographicMapCellPositionTracking_Access;
   function getCurrentOverCellType (This : in out GeographicMapCellPositionTracking; geographicMap_Param : access BasicGeographicMap'Class) return GeographicMapCellType_Access;
   procedure getCurrentOverCellType (This : in out GeographicMapCellPositionTracking; geographicMap_Param : access BasicGeographicMap'Class);
   function updateStart (This : in out GeographicMapCellPositionTracking; gameCanvasInterface_Param : access AllBinaryGameCanvasInterface'Class; layer_Param : access AllBinaryLayer'Class) return Boolean;
   procedure updateStart (This : in out GeographicMapCellPositionTracking; gameCanvasInterface_Param : access AllBinaryGameCanvasInterface'Class; layer_Param : access AllBinaryLayer'Class);
   function updateEnd (This : in out GeographicMapCellPositionTracking) return Boolean;
   function getPreviousGeographicMapCellPosition (This : in out GeographicMapCellPositionTracking) return GeographicMapCellPosition_Access;
   function getCurrentGeographicMapCellPosition (This : in out GeographicMapCellPositionTracking) return GeographicMapCellPosition_Access;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;


